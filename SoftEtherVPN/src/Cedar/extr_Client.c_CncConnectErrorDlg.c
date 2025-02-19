
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* ServerName; void* HideWindow; int RetryIntervalSec; int RetryLimit; int CurrentRetryCount; int Err; int AccountName; } ;
typedef TYPE_1__ UI_CONNECTERROR_DLG ;
struct TYPE_11__ {int HaltThread; int Event; int * Sock; TYPE_2__* Session; } ;
struct TYPE_10__ {int RetryInterval; int HaltEvent; } ;
typedef int THREAD ;
typedef int SOCK ;
typedef TYPE_2__ SESSION ;
typedef int PACK ;
typedef TYPE_3__ CNC_CONNECT_ERROR_DLG_THREAD_PARAM ;


 int * CncConnect () ;
 int CncConnectErrorDlgHaltThread ;
 int Disconnect (int *) ;
 int Free (TYPE_3__*) ;
 int FreePack (int *) ;
 int INFINITE ;
 int NewEvent () ;
 int * NewPack () ;
 int * NewThread (int ,TYPE_3__*) ;
 int PackAddBool (int *,char*,void*) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,char*) ;
 int PackAddUniStr (int *,char*,int ) ;
 void* PackGetBool (int *,char*) ;
 int * RecvPack (int *) ;
 int ReleaseEvent (int ) ;
 int ReleaseSock (int *) ;
 int ReleaseThread (int *) ;
 int SendPack (int *,int *) ;
 int Set (int ) ;
 int Wait (int ,int ) ;
 int WaitThread (int *,int ) ;
 TYPE_3__* ZeroMalloc (int) ;

bool CncConnectErrorDlg(SESSION *session, UI_CONNECTERROR_DLG *dlg)
{
 SOCK *s;
 PACK *p;
 CNC_CONNECT_ERROR_DLG_THREAD_PARAM *dp;
 THREAD *t;
 bool ret = 0;

 if (dlg == ((void*)0) || session == ((void*)0))
 {
  return 0;
 }

 s = CncConnect();
 if (s == ((void*)0))
 {
  Wait(session->HaltEvent, session->RetryInterval);
  return 1;
 }

 p = NewPack();
 PackAddStr(p, "function", "connecterror_dialog");
 PackAddUniStr(p, "AccountName", dlg->AccountName);
 PackAddStr(p, "ServerName", dlg->ServerName);
 PackAddInt(p, "Err", dlg->Err);
 PackAddInt(p, "CurrentRetryCount", dlg->CurrentRetryCount);
 PackAddInt(p, "RetryLimit", dlg->RetryLimit);
 PackAddInt(p, "RetryIntervalSec", dlg->RetryIntervalSec);
 PackAddBool(p, "HideWindow", dlg->HideWindow);

 SendPack(s, p);
 FreePack(p);

 dp = ZeroMalloc(sizeof(CNC_CONNECT_ERROR_DLG_THREAD_PARAM));
 dp->Session = session;
 dp->Sock = s;
 dp->Event = NewEvent();

 t = NewThread(CncConnectErrorDlgHaltThread, dp);

 p = RecvPack(s);
 if (p != ((void*)0))
 {
  ret = PackGetBool(p, "ok");
  dlg->HideWindow = PackGetBool(p, "HideWindow");

  FreePack(p);
 }

 dp->HaltThread = 1;
 Set(dp->Event);

 WaitThread(t, INFINITE);

 ReleaseEvent(dp->Event);
 Free(dp);
 ReleaseThread(t);

 Disconnect(s);
 ReleaseSock(s);

 return ret;
}
