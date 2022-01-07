
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
struct TYPE_12__ {int BuildInfo; int VerString; TYPE_1__* Client; } ;
struct TYPE_11__ {int NoSaveLog; TYPE_3__* Cedar; int Logger; int PulseRecvThread; int * GlobalPulse; int EncryptedPassword; int NotifyCancelList; int ref; void* lockForConnect; void* lock; int SockList; void* CmSetting; int MsSuspendHandler; } ;
typedef int CM_SETTING ;
typedef TYPE_1__ CLIENT ;


 int CEDAR_CLIENT_STR ;
 int CLIENT_GLOBAL_PULSE_NAME ;
 int CLIENT_LOG_DIR_NAME ;
 int CLIENT_LOG_PREFIX ;
 int CLog (TYPE_1__*,char*,...) ;
 int CiApplyInnerVPNServerConfig (TYPE_1__*) ;
 int CiChangeAllVLanMacAddressIfCleared (TYPE_1__*) ;
 int CiChangeAllVLanMacAddressIfMachineChanged (TYPE_1__*) ;
 int CiInitConfiguration (TYPE_1__*) ;
 int CiLoadIniSettings (TYPE_1__*) ;
 int CiPulseRecvThread ;
 int InitWinUi (int *,int ,int ) ;
 int LOG_SWITCH_DAY ;
 int MAX_SIZE ;
 int MakeDir (int ) ;
 int MsIsNt () ;
 scalar_t__ MsIsWindows7 () ;
 int MsNewSuspendHandler () ;
 int * MsOpenOrCreateGlobalPulse (int ) ;
 TYPE_3__* NewCedar (int *,int *) ;
 int NewList (int *) ;
 void* NewLock () ;
 int NewLog (int ,int ,int ) ;
 int NewRef () ;
 int NewSockList () ;
 int NewThread (int ,TYPE_1__*) ;
 int OSSetHighPriority () ;
 int Sha0 (int ,char*,int ) ;
 int StrToUni (int *,int,int ) ;
 int Win32ReleaseAllDhcp9x (int) ;
 void* ZeroMalloc (int) ;
 int _II (char*) ;
 int _SS (char*) ;
 int * ci_active_sessions_lock ;
 scalar_t__ ci_num_active_sessions ;

CLIENT *CiNewClient()
{
 CLIENT *c = ZeroMalloc(sizeof(CLIENT));



 if (ci_active_sessions_lock == ((void*)0))
 {
  ci_active_sessions_lock = NewLock();
  ci_num_active_sessions = 0;
 }
 c->CmSetting = ZeroMalloc(sizeof(CM_SETTING));

 c->SockList = NewSockList();

 c->lock = NewLock();
 c->lockForConnect = NewLock();
 c->ref = NewRef();

 c->Cedar = NewCedar(((void*)0), ((void*)0));

 c->Cedar->Client = c;

 c->NotifyCancelList = NewList(((void*)0));

 Sha0(c->EncryptedPassword, "", 0);





 if (c->GlobalPulse != ((void*)0))
 {
  c->PulseRecvThread = NewThread(CiPulseRecvThread, c);
 }

 CiLoadIniSettings(c);


 if(c->NoSaveLog == 0)
 {
  MakeDir(CLIENT_LOG_DIR_NAME);
  c->Logger = NewLog(CLIENT_LOG_DIR_NAME, CLIENT_LOG_PREFIX, LOG_SWITCH_DAY);
 }

 CLog(c, "L_LINE");
 CLog(c, "LC_START_2", CEDAR_CLIENT_STR, c->Cedar->VerString);
 CLog(c, "LC_START_3", c->Cedar->BuildInfo);
 CLog(c, "LC_START_1");
 CiInitConfiguration(c);


 OSSetHighPriority();
 CiChangeAllVLanMacAddressIfMachineChanged(c);

 CiChangeAllVLanMacAddressIfCleared(c);


 CiApplyInnerVPNServerConfig(c);

 return c;
}
