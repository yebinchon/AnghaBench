
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int HaltPulseThread; int * MsSuspendHandler; struct TYPE_6__* CmSetting; int SockList; int NotifyCancelList; int * GlobalPulse; int * PulseRecvThread; int * lock; int * lockForConnect; int Cedar; int * Logger; int Eraser; } ;
typedef TYPE_1__ CLIENT ;


 int CLog (TYPE_1__*,char*) ;
 int CiFreeConfiguration (TYPE_1__*) ;
 int DeleteLock (int *) ;
 int Free (TYPE_1__*) ;
 int FreeEraser (int ) ;
 int FreeLog (int *) ;
 int FreeSockList (int ) ;
 int FreeWinUi () ;
 int INFINITE ;
 int MsCloseGlobalPulse (int *) ;
 int MsFreeSuspendHandler (int *) ;
 int MsIsNt () ;
 int MsSendGlobalPulse (int *) ;
 int ReleaseCedar (int ) ;
 int ReleaseList (int ) ;
 int ReleaseThread (int *) ;
 int StopCedarLog () ;
 int WaitThread (int *,int ) ;
 int Win32ReleaseAllDhcp9x (int) ;
 int * ci_active_sessions_lock ;
 scalar_t__ ci_num_active_sessions ;

void CiCleanupClient(CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }



 CiFreeConfiguration(c);






 CLog(c, "LC_END");
 CLog(c, "L_LINE");
 FreeEraser(c->Eraser);
 FreeLog(c->Logger);
 c->Logger = ((void*)0);


 ReleaseCedar(c->Cedar);

 DeleteLock(c->lockForConnect);
 DeleteLock(c->lock);

 c->HaltPulseThread = 1;

 if (c->GlobalPulse != ((void*)0))
 {



 }

 if (c->PulseRecvThread != ((void*)0))
 {
  WaitThread(c->PulseRecvThread, INFINITE);
  ReleaseThread(c->PulseRecvThread);
 }

 if (c->GlobalPulse != ((void*)0))
 {



 }

 ReleaseList(c->NotifyCancelList);

 FreeSockList(c->SockList);

 Free(c->CmSetting);
 Free(c);
 StopCedarLog();

 if (ci_active_sessions_lock != ((void*)0))
 {
  DeleteLock(ci_active_sessions_lock);
  ci_active_sessions_lock = ((void*)0);

  ci_num_active_sessions = 0;
 }
}
