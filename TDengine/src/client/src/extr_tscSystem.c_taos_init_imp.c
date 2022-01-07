
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int rpcInit ;
typedef int int64_t ;
struct TYPE_6__ {int numOfIps; void** ipstr; void** ip; } ;
struct TYPE_5__ {char* label; int numOfThreads; int bits; int numOfChanns; int sessionsPerChann; int * qhandle; void* connType; scalar_t__ noFree; void* idMgmt; void* fp; scalar_t__ localPort; void* localIp; } ;
typedef int SShellSubmitMsg ;
typedef TYPE_1__ SRpcInit ;


 void* TAOS_CONN_SOCKET_TYPE_C () ;
 void* TAOS_ID_FREE ;
 void* inet_addr (char*) ;
 int initialized ;
 char* logDir ;
 int memset (TYPE_1__*,int ,int) ;
 int mkdir (char*,int) ;
 int * pTscMgmtConn ;
 int * pVnodeConn ;
 int printf (char*,char*) ;
 int rand () ;
 int slaveIndex ;
 int sprintf (char*,char*,char*) ;
 int srand (int ) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcpy (void*,char*) ;
 int tError (char*) ;
 int taosCloseRpc (int *) ;
 int taosCloseRpcConn ;
 int taosGetTimestampSec () ;
 int * taosInitDataCache (int,int ,int) ;
 scalar_t__ taosInitLog (char*,int ,int) ;
 int * taosInitScheduler (int,int,char*) ;
 int taosOpenConnCache (int,int ,int ,int) ;
 void* taosOpenRpc (TYPE_1__*) ;
 int taosOpenRpcChann (int *,int,int) ;
 int taosTmrInit (int,int,int,char*) ;
 int taosTmrReset (int ,int,int *,int ,int *) ;
 scalar_t__ tsInsertHeadSize ;
 void* tsLocalIp ;
 char* tsMasterIp ;
 int tsMaxMeterConnections ;
 int tsMaxMgmtConnections ;
 int tsMaxVnodeConnections ;
 scalar_t__ tsMeterMetaKeepTimer ;
 scalar_t__ tsMetricMetaKeepTimer ;
 double tsNumOfCores ;
 int tsNumOfLogLines ;
 double tsNumOfThreadsPerCore ;
 int tsPrintGlobalConfig () ;
 int tsReadGlobalConfig () ;
 int tsReadGlobalLogConfig () ;
 scalar_t__ tsRpcHeadSize ;
 char* tsSecondIp ;
 int tsShellActivityTimer ;
 int * tscCacheHandle ;
 int tscCheckDiskUsage ;
 int tscCheckDiskUsageTmr ;
 int tscConnCache ;
 scalar_t__ tscEmbedded ;
 int tscError (char*) ;
 int tscInitMsgs () ;
 TYPE_2__ tscMgmtIpList ;
 int tscNumOfThreads ;
 void* tscProcessMsgFromServer ;
 int * tscQhandle ;
 int tscTmr ;
 int tscTrace (char*,...) ;

void taos_init_imp() {
  char temp[128];
  struct stat dirstat;
  SRpcInit rpcInit;

  srand(taosGetTimestampSec());

  if (tscEmbedded == 0) {





    strcpy(tsLocalIp, "0.0.0.0");


    tsReadGlobalLogConfig();


    if (stat(logDir, &dirstat) < 0) mkdir(logDir, 0755);

    sprintf(temp, "%s/taoslog", logDir);
    if (taosInitLog(temp, tsNumOfLogLines, 10) < 0) {
      printf("failed to open log file in directory:%s\n", logDir);
    }

    tsReadGlobalConfig();
    tsPrintGlobalConfig();

    tscTrace("starting to initialize TAOS client ...");
    tscTrace("Local IP address is:%s", tsLocalIp);
  }
  tscInitMsgs();
  slaveIndex = rand();
  int queueSize = tsMaxVnodeConnections + tsMaxMeterConnections + tsMaxMgmtConnections + tsMaxMgmtConnections;

  if (tscEmbedded == 0) {
    tscNumOfThreads = tsNumOfCores * tsNumOfThreadsPerCore / 2.0;
  } else {
    tscNumOfThreads = tsNumOfCores * tsNumOfThreadsPerCore / 4.0;
  }

  if (tscNumOfThreads < 2) tscNumOfThreads = 2;

  tscQhandle = taosInitScheduler(queueSize, tscNumOfThreads, "tsc");
  if (((void*)0) == tscQhandle) {
    tscError("failed to init scheduler");
    return;
  }

  memset(&rpcInit, 0, sizeof(rpcInit));
  rpcInit.localIp = tsLocalIp;
  rpcInit.localPort = 0;
  rpcInit.label = "TSC-vnode";
  rpcInit.numOfThreads = tscNumOfThreads;
  rpcInit.fp = tscProcessMsgFromServer;
  rpcInit.bits = 20;
  rpcInit.numOfChanns = tscNumOfThreads;
  rpcInit.sessionsPerChann = tsMaxVnodeConnections / tscNumOfThreads;
  rpcInit.idMgmt = TAOS_ID_FREE;
  rpcInit.noFree = 0;
  rpcInit.connType = TAOS_CONN_SOCKET_TYPE_C();
  rpcInit.qhandle = tscQhandle;
  pVnodeConn = taosOpenRpc(&rpcInit);
  if (pVnodeConn == ((void*)0)) {
    tscError("failed to init connection to vnode");
    return;
  }

  for (int i = 0; i < tscNumOfThreads; ++i) {
    int retVal = taosOpenRpcChann(pVnodeConn, i, rpcInit.sessionsPerChann);
    if (0 != retVal) {
      tError("TSC-vnode, failed to open rpc chann");
      taosCloseRpc(pVnodeConn);
      return;
    }
  }

  memset(&rpcInit, 0, sizeof(rpcInit));
  rpcInit.localIp = tsLocalIp;
  rpcInit.localPort = 0;
  rpcInit.label = "TSC-mgmt";
  rpcInit.numOfThreads = 1;
  rpcInit.fp = tscProcessMsgFromServer;
  rpcInit.bits = 20;
  rpcInit.numOfChanns = 1;
  rpcInit.sessionsPerChann = tsMaxMgmtConnections;
  rpcInit.idMgmt = TAOS_ID_FREE;
  rpcInit.noFree = 0;
  rpcInit.connType = TAOS_CONN_SOCKET_TYPE_C();
  rpcInit.qhandle = tscQhandle;
  pTscMgmtConn = taosOpenRpc(&rpcInit);
  if (pTscMgmtConn == ((void*)0)) {
    tscError("failed to init connection to mgmt");
    return;
  }

  tscTmr = taosTmrInit(tsMaxMgmtConnections * 2, 200, 60000, "TSC");
  if(0 == tscEmbedded){
    taosTmrReset(tscCheckDiskUsage, 10, ((void*)0), tscTmr, &tscCheckDiskUsageTmr);
  }
  int64_t refreshTime = tsMetricMetaKeepTimer < tsMeterMetaKeepTimer ? tsMetricMetaKeepTimer : tsMeterMetaKeepTimer;
  refreshTime = refreshTime > 2 ? 2 : refreshTime;
  refreshTime = refreshTime < 1 ? 1 : refreshTime;

  if (tscCacheHandle == ((void*)0)) tscCacheHandle = taosInitDataCache(tsMaxMeterConnections / 2, tscTmr, refreshTime);

  tscConnCache = taosOpenConnCache(tsMaxMeterConnections * 2, taosCloseRpcConn, tscTmr, tsShellActivityTimer * 1000);

  initialized = 1;
  tscTrace("client is initialized successfully");
  tsInsertHeadSize = tsRpcHeadSize + sizeof(SShellSubmitMsg);
}
