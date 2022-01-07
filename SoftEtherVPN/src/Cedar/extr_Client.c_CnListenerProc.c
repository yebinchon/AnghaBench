
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int function ;
struct TYPE_17__ {int* addr; } ;
struct TYPE_19__ {TYPE_1__ LocalIP; int ref; } ;
struct TYPE_18__ {TYPE_3__* s; } ;
typedef int THREAD ;
typedef TYPE_2__ TCP_ACCEPTED_PARAM ;
typedef TYPE_3__ SOCK ;
typedef int PACK ;


 int APPID_CM ;
 int AddRef (int ) ;
 int CnCheckCert (TYPE_3__*,int *) ;
 int CnConnectErrorDlg (TYPE_3__*,int *) ;
 int CnExecDriverInstaller (TYPE_3__*,int *) ;
 int CnMsgDlg (TYPE_3__*,int *) ;
 int CnNicInfo (TYPE_3__*,int *) ;
 int CnPasswordDlg (TYPE_3__*,int *) ;
 int CnReleaseSocket (TYPE_3__*,int *) ;
 int CnSecureSign (TYPE_3__*,int *) ;
 int CnStatusPrinter (TYPE_3__*,int *) ;
 int Disconnect (TYPE_3__*) ;
 int FreePack (int *) ;
 int JL_SetCurrentProcessExplicitAppUserModelID (int ) ;
 int MAX_SIZE ;
 int MsGetCurrentTerminalSessionId () ;
 int MsTerminateProcess () ;
 int * NewPack () ;
 int NoticeThreadInit (int *) ;
 int PackAddInt (int *,char*,int ) ;
 scalar_t__ PackGetStr (int *,char*,char*,int) ;
 int * RecvPack (TYPE_3__*) ;
 int ReleaseSock (TYPE_3__*) ;
 int SendPack (TYPE_3__*,int *) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int _exit (int ) ;

void CnListenerProc(THREAD *thread, void *param)
{
 TCP_ACCEPTED_PARAM *data = (TCP_ACCEPTED_PARAM *)param;
 SOCK *s;
 PACK *p;

 if (data == ((void*)0) || thread == ((void*)0))
 {
  return;
 }






 s = data->s;
 AddRef(s->ref);
 NoticeThreadInit(thread);

 if (s->LocalIP.addr[0] == 127)
 {
  p = RecvPack(s);

  if (p != ((void*)0))
  {
   char function[MAX_SIZE];

   if (PackGetStr(p, "function", function, sizeof(function)))
   {
    if (StrCmpi(function, "status_printer") == 0)
    {
     CnStatusPrinter(s, p);
    }
    else if (StrCmpi(function, "connecterror_dialog") == 0)
    {
     CnConnectErrorDlg(s, p);
    }
    else if (StrCmpi(function, "msg_dialog") == 0)
    {
     CnMsgDlg(s, p);
    }
    else if (StrCmpi(function, "nicinfo") == 0)
    {
     CnNicInfo(s, p);
    }
    else if (StrCmpi(function, "password_dialog") == 0)
    {
     CnPasswordDlg(s, p);
    }
    else if (StrCmpi(function, "secure_sign") == 0)
    {
     CnSecureSign(s, p);
    }
    else if (StrCmpi(function, "check_cert") == 0)
    {
     CnCheckCert(s, p);
    }
    else if (StrCmpi(function, "exit") == 0)
    {



     _exit(0);

    }
    else if (StrCmpi(function, "get_session_id") == 0)
    {
     PACK *p = NewPack();



     SendPack(s, p);
     FreePack(p);
    }
    else if (StrCmpi(function, "exec_driver_installer") == 0)
    {
     CnExecDriverInstaller(s, p);
    }
    else if (StrCmpi(function, "release_socket") == 0)
    {

     CnReleaseSocket(s, p);
    }
   }

   FreePack(p);
  }
 }

 Disconnect(s);
 ReleaseSock(s);
}
