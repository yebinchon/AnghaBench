
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {int CheckExpires; int Bridge; TYPE_1__* Server; int BuildInfo; int VerString; int ServerStr; } ;
struct TYPE_20__ {int Me; int Weight; void* HubList; int hostname; TYPE_3__* Cedar; } ;
struct TYPE_19__ {int NoHighPriorityProcess; scalar_t__ ServerType; int FarmControllerInited; int DisableNatTraversal; TYPE_3__* Cedar; int EnableVpnOverDns; void* DynListenerDns; int EnableVpnOverIcmp; void* DynListenerIcmp; int NatTGlobalUdpPort; int * AzureClient; void* FarmMemberList; TYPE_2__* Me; int Weight; int FarmController; void* SyslogLock; int ListenIP; int Syslog; int Logger; int Keep; void* TasksFromFarmControllerLock; int StartTime; void* ServerListenerList; int AzureServer; int IsInVm; int ref; void* SaveCfgLock; void* OpenVpnSstpConfigLock; void* lock; int MyRandomKey; } ;
typedef TYPE_1__ SERVER ;
typedef int LISTENER ;
typedef TYPE_2__ FARM_MEMBER ;


 int Add (void*,TYPE_2__*) ;
 int BRIDGE_LOG_DIR_NAME ;
 int * CompareHubList ;
 int * CompareServerListener ;
 int DEFAULT_GETIP_THREAD_MAX_NUM ;
 int DisableRDUPServerGlobally () ;
 int GetMachineName (int ,int) ;
 int InitServerCapsCache (TYPE_1__*) ;
 scalar_t__ IsFileExists (char*) ;
 int IsHamMode () ;
 int LISTENER_DNS ;
 int LISTENER_ICMP ;
 int LISTENER_INPROC ;
 int LISTENER_REVERSE ;
 int LISTENER_RUDP ;
 int LOG_SWITCH_DAY ;
 int MEM_FIFO_REALLOC_MEM_SIZE ;
 int MakeDir (int ) ;
 int MsIsInVm () ;
 int NewAzureServer (TYPE_3__*) ;
 TYPE_3__* NewCedar (int *,int *) ;
 void* NewDynamicListener (TYPE_3__*,int *,int ,int) ;
 void* NewList (int *) ;
 int * NewListener (TYPE_3__*,int ,int ) ;
 int * NewListenerEx4 (TYPE_3__*,int ,int ,int ,int *,int,int,int *,int ) ;
 void* NewLock () ;
 int NewLog (int ,int ,int ) ;
 int NewRef () ;
 int NewSysLog (int *,int ,int *) ;
 int OSSetHighPriority () ;
 int RAND_PORT_ID_SERVER_LISTEN ;
 int Rand (int ,int) ;
 int RegistWindowsFirewallAll () ;
 int ReleaseListener (int *) ;
 int SERVER_LOG_DIR_NAME ;
 int SERVER_LOG_PERFIX ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SLog (TYPE_3__*,char*,...) ;
 int SetCedarVpnBridge (TYPE_3__*) ;
 int SetEraserCheckInterval (int ) ;
 int SetFifoCurrentReallocMemSize (int ) ;
 int SetGetIpThreadMaxNum (int ) ;
 int SiInitConfiguration (TYPE_1__*) ;
 int SiInitDeadLockCheck (TYPE_1__*) ;
 int SiInitHubCreateHistory (TYPE_1__*) ;
 int SiStartConnectToController (TYPE_1__*) ;
 int SiStartFarmControl (TYPE_1__*) ;
 int SiUpdateCurrentRegion (TYPE_3__*,char*,int) ;
 int SleepThread (int) ;
 int StartKeep () ;
 int SystemTime64 () ;
 int TCPAcceptedThread ;
 int UnixIsInVm () ;
 int UnixSetHighOomScore () ;
 void* ZeroMalloc (int) ;

SERVER *SiNewServerEx(bool bridge, bool in_client_inner_server, bool relay_server)
{
 SERVER *s;
 LISTENER *inproc;
 LISTENER *azure;
 LISTENER *rudp;

 SetGetIpThreadMaxNum(DEFAULT_GETIP_THREAD_MAX_NUM);

 s = ZeroMalloc(sizeof(SERVER));

 SetEraserCheckInterval(0);

 SiInitHubCreateHistory(s);

 InitServerCapsCache(s);

 Rand(s->MyRandomKey, sizeof(s->MyRandomKey));

 s->lock = NewLock();


 s->OpenVpnSstpConfigLock = NewLock();
 s->SaveCfgLock = NewLock();
 s->ref = NewRef();
 s->Cedar = NewCedar(((void*)0), ((void*)0));
 s->Cedar->Server = s;





 s->IsInVm = UnixIsInVm();
 s->Cedar->CheckExpires = 1;
 s->ServerListenerList = NewList(CompareServerListener);
 s->StartTime = SystemTime64();
 s->TasksFromFarmControllerLock = NewLock();

 if (bridge)
 {
  SetCedarVpnBridge(s->Cedar);
 }
 s->Keep = StartKeep();


 MakeDir(bridge == 0 ? SERVER_LOG_DIR_NAME : BRIDGE_LOG_DIR_NAME);
 s->Logger = NewLog(bridge == 0 ? SERVER_LOG_DIR_NAME : BRIDGE_LOG_DIR_NAME, SERVER_LOG_PERFIX, LOG_SWITCH_DAY);

 SLog(s->Cedar, "L_LINE");
 SLog(s->Cedar, "LS_START_2", s->Cedar->ServerStr, s->Cedar->VerString);
 SLog(s->Cedar, "LS_START_3", s->Cedar->BuildInfo);
 SLog(s->Cedar, "LS_START_UTF8");
 SLog(s->Cedar, "LS_START_1");




 SiInitConfiguration(s);

 s->Syslog = NewSysLog(((void*)0), 0, &s->Cedar->Server->ListenIP);
 s->SyslogLock = NewLock();

 SetFifoCurrentReallocMemSize(MEM_FIFO_REALLOC_MEM_SIZE);



 if (s->NoHighPriorityProcess == 0)
 {
  OSSetHighPriority();
 }





 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {

  s->FarmController = SiStartConnectToController(s);
 }
 else if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  FARM_MEMBER *f;

  s->FarmMemberList = NewList(((void*)0));

  f = ZeroMalloc(sizeof(FARM_MEMBER));
  f->Cedar = s->Cedar;
  GetMachineName(f->hostname, sizeof(f->hostname));
  f->Me = 1;
  f->HubList = NewList(CompareHubList);
  f->Weight = s->Weight;

  s->Me = f;

  Add(s->FarmMemberList, f);

  SiStartFarmControl(s);

  s->FarmControllerInited = 1;
 }


 inproc = NewListener(s->Cedar, LISTENER_INPROC, 0);
 ReleaseListener(inproc);


 if (s->AzureClient != ((void*)0))
 {
  azure = NewListener(s->Cedar, LISTENER_REVERSE, 0);
  ReleaseListener(azure);
 }


 if (s->DisableNatTraversal == 0 && s->Cedar->Bridge == 0)
 {
  rudp = NewListenerEx4(s->Cedar, LISTENER_RUDP, 0, TCPAcceptedThread, ((void*)0), 0, 0,
   &s->NatTGlobalUdpPort, RAND_PORT_ID_SERVER_LISTEN);
  ReleaseListener(rudp);
 }


 s->DynListenerIcmp = NewDynamicListener(s->Cedar, &s->EnableVpnOverIcmp, LISTENER_ICMP, 0);


 s->DynListenerDns = NewDynamicListener(s->Cedar, &s->EnableVpnOverDns, LISTENER_DNS, 53);


 SiInitDeadLockCheck(s);

 SiUpdateCurrentRegion(s->Cedar, "", 1);

 return s;
}
