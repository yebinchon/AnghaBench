#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  rpcInit ;
typedef  int int64_t ;
struct TYPE_6__ {int numOfIps; void** ipstr; void** ip; } ;
struct TYPE_5__ {char* label; int numOfThreads; int bits; int numOfChanns; int sessionsPerChann; int /*<<< orphan*/ * qhandle; void* connType; scalar_t__ noFree; void* idMgmt; void* fp; scalar_t__ localPort; void* localIp; } ;
typedef  int /*<<< orphan*/  SShellSubmitMsg ;
typedef  TYPE_1__ SRpcInit ;

/* Variables and functions */
 void* FUNC0 () ; 
 void* TAOS_ID_FREE ; 
 void* FUNC1 (char*) ; 
 int initialized ; 
 char* logDir ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/ * pTscMgmtConn ; 
 int /*<<< orphan*/ * pVnodeConn ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  slaveIndex ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (void*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taosCloseRpcConn ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC15 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC17 (TYPE_1__*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ tsInsertHeadSize ; 
 void* tsLocalIp ; 
 char* tsMasterIp ; 
 int tsMaxMeterConnections ; 
 int tsMaxMgmtConnections ; 
 int tsMaxVnodeConnections ; 
 scalar_t__ tsMeterMetaKeepTimer ; 
 scalar_t__ tsMetricMetaKeepTimer ; 
 double tsNumOfCores ; 
 int /*<<< orphan*/  tsNumOfLogLines ; 
 double tsNumOfThreadsPerCore ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 scalar_t__ tsRpcHeadSize ; 
 char* tsSecondIp ; 
 int tsShellActivityTimer ; 
 int /*<<< orphan*/ * tscCacheHandle ; 
 int /*<<< orphan*/  tscCheckDiskUsage ; 
 int /*<<< orphan*/  tscCheckDiskUsageTmr ; 
 int /*<<< orphan*/  tscConnCache ; 
 scalar_t__ tscEmbedded ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 TYPE_2__ tscMgmtIpList ; 
 int tscNumOfThreads ; 
 void* tscProcessMsgFromServer ; 
 int /*<<< orphan*/ * tscQhandle ; 
 int /*<<< orphan*/  tscTmr ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 

void FUNC27() {
  char        temp[128];
  struct stat dirstat;
  SRpcInit    rpcInit;

  FUNC7(FUNC12());

  if (tscEmbedded == 0) {
    /*
     * set localIp = 0
     * means unset tsLocalIp in client
     * except read from config file
     */
    FUNC9(tsLocalIp, "0.0.0.0");

    // Read global configuration.
    FUNC23();

    // For log directory
    if (FUNC8(logDir, &dirstat) < 0) FUNC3(logDir, 0755);

    FUNC6(temp, "%s/taoslog", logDir);
    if (FUNC14(temp, tsNumOfLogLines, 10) < 0) {
      FUNC4("failed to open log file in directory:%s\n", logDir);
    }

    FUNC22();
    FUNC21();

    FUNC26("starting to initialize TAOS client ...");
    FUNC26("Local IP address is:%s", tsLocalIp);
  }

#ifdef CLUSTER
  tscMgmtIpList.numOfIps = 2;
  strcpy(tscMgmtIpList.ipstr[0], tsMasterIp);
  tscMgmtIpList.ip[0] = inet_addr(tsMasterIp);

  strcpy(tscMgmtIpList.ipstr[1], tsMasterIp);
  tscMgmtIpList.ip[1] = inet_addr(tsMasterIp);

  if (tsSecondIp[0]) {
    tscMgmtIpList.numOfIps = 3;
    strcpy(tscMgmtIpList.ipstr[2], tsSecondIp);
    tscMgmtIpList.ip[2] = inet_addr(tsSecondIp);
  }
#endif

  FUNC25();
  slaveIndex = FUNC5();
  int queueSize = tsMaxVnodeConnections + tsMaxMeterConnections + tsMaxMgmtConnections + tsMaxMgmtConnections;

  if (tscEmbedded == 0) {
    tscNumOfThreads = tsNumOfCores * tsNumOfThreadsPerCore / 2.0;
  } else {
    tscNumOfThreads = tsNumOfCores * tsNumOfThreadsPerCore / 4.0;
  }

  if (tscNumOfThreads < 2) tscNumOfThreads = 2;

  tscQhandle = FUNC15(queueSize, tscNumOfThreads, "tsc");
  if (NULL == tscQhandle) {
    FUNC24("failed to init scheduler");
    return;
  }

  FUNC2(&rpcInit, 0, sizeof(rpcInit));
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
  rpcInit.connType = FUNC0();
  rpcInit.qhandle = tscQhandle;
  pVnodeConn = FUNC17(&rpcInit);
  if (pVnodeConn == NULL) {
    FUNC24("failed to init connection to vnode");
    return;
  }

  for (int i = 0; i < tscNumOfThreads; ++i) {
    int retVal = FUNC18(pVnodeConn, i, rpcInit.sessionsPerChann);
    if (0 != retVal) {
      FUNC10("TSC-vnode, failed to open rpc chann");
      FUNC11(pVnodeConn);
      return;
    }
  }

  FUNC2(&rpcInit, 0, sizeof(rpcInit));
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
  rpcInit.connType = FUNC0();
  rpcInit.qhandle = tscQhandle;
  pTscMgmtConn = FUNC17(&rpcInit);
  if (pTscMgmtConn == NULL) {
    FUNC24("failed to init connection to mgmt");
    return;
  }

  tscTmr = FUNC19(tsMaxMgmtConnections * 2, 200, 60000, "TSC");
  if(0 == tscEmbedded){
    FUNC20(tscCheckDiskUsage, 10, NULL, tscTmr, &tscCheckDiskUsageTmr);      
  }
  int64_t refreshTime = tsMetricMetaKeepTimer < tsMeterMetaKeepTimer ? tsMetricMetaKeepTimer : tsMeterMetaKeepTimer;
  refreshTime = refreshTime > 2 ? 2 : refreshTime;
  refreshTime = refreshTime < 1 ? 1 : refreshTime;

  if (tscCacheHandle == NULL) tscCacheHandle = FUNC13(tsMaxMeterConnections / 2, tscTmr, refreshTime);

  tscConnCache = FUNC16(tsMaxMeterConnections * 2, taosCloseRpcConn, tscTmr, tsShellActivityTimer * 1000);

  initialized = 1;
  FUNC26("client is initialized successfully");
  tsInsertHeadSize = tsRpcHeadSize + sizeof(SShellSubmitMsg);
}