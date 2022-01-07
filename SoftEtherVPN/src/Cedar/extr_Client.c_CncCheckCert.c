
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* ServerName; void* SaveServerCert; void* DiffWarning; void* Ok; int old_x; int parent_x; int x; int AccountName; } ;
typedef TYPE_1__ UI_CHECKCERT ;
struct TYPE_8__ {int HaltThread; int Event; int * Session; int * Sock; } ;
typedef int THREAD ;
typedef int SOCK ;
typedef int SESSION ;
typedef int PACK ;
typedef TYPE_2__ CNC_CONNECT_ERROR_DLG_THREAD_PARAM ;


 int CncCheckCertHaltThread ;
 int * CncConnect () ;
 int Disconnect (int *) ;
 int Free (TYPE_2__*) ;
 int FreePack (int *) ;
 int INFINITE ;
 int NewEvent () ;
 int * NewPack () ;
 int * NewThread (int ,TYPE_2__*) ;
 int PackAddBool (int *,char*,void*) ;
 int PackAddStr (int *,char*,char*) ;
 int PackAddUniStr (int *,char*,int ) ;
 int PackAddX (int *,char*,int ) ;
 void* PackGetBool (int *,char*) ;
 int * RecvPack (int *) ;
 int ReleaseEvent (int ) ;
 int ReleaseSock (int *) ;
 int ReleaseThread (int *) ;
 int SendPack (int *,int *) ;
 int Set (int ) ;
 int WaitThread (int *,int ) ;
 TYPE_2__* ZeroMalloc (int) ;

void CncCheckCert(SESSION *session, UI_CHECKCERT *dlg)
{
 SOCK *s;
 PACK *p;
 CNC_CONNECT_ERROR_DLG_THREAD_PARAM *dp;
 THREAD *t;

 if (dlg == ((void*)0) || session == ((void*)0))
 {
  return;
 }

 s = CncConnect();
 if (s == ((void*)0))
 {
  return;
 }

 p = NewPack();
 PackAddStr(p, "function", "check_cert");
 PackAddUniStr(p, "AccountName", dlg->AccountName);
 PackAddStr(p, "ServerName", dlg->ServerName);
 PackAddX(p, "x", dlg->x);
 PackAddX(p, "parent_x", dlg->parent_x);
 PackAddX(p, "old_x", dlg->old_x);
 PackAddBool(p, "DiffWarning", dlg->DiffWarning);
 PackAddBool(p, "Ok", dlg->Ok);
 PackAddBool(p, "SaveServerCert", dlg->SaveServerCert);

 SendPack(s, p);
 FreePack(p);

 dp = ZeroMalloc(sizeof(CNC_CONNECT_ERROR_DLG_THREAD_PARAM));
 dp->Sock = s;
 dp->Event = NewEvent();
 dp->Session = session;

 t = NewThread(CncCheckCertHaltThread, dp);

 p = RecvPack(s);
 if (p != ((void*)0))
 {
  dlg->Ok = PackGetBool(p, "Ok");
  dlg->DiffWarning = PackGetBool(p, "DiffWarning");
  dlg->SaveServerCert = PackGetBool(p, "SaveServerCert");

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
}
