
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int rpcInit ;
struct TYPE_6__ {char* localIp; char* label; int numOfThreads; int bits; int numOfChanns; int sessionsPerChann; int idleTime; int afp; int qhandle; int connType; int idMgmt; int fp; int localPort; } ;
typedef TYPE_1__ SRpcInit ;
typedef TYPE_1__ SConnObj ;


 int TAOS_CONN_SOCKET_TYPE_S () ;
 int TAOS_ID_FREE ;
 TYPE_1__* connList ;
 int mError (char*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int mgmtInitProcessShellMsg () ;
 int mgmtProcessMsgFromShell ;
 int mgmtQhandle ;
 int mgmtRetriveUserAuthInfo ;
 int * pShellConn ;
 int * taosOpenRpc (TYPE_1__*) ;
 char* tsInternalIp ;
 int tsMaxShellConns ;
 int tsMgmtShellPort ;
 double tsNumOfCores ;
 double tsNumOfThreadsPerCore ;
 int tsShellActivityTimer ;

int mgmtInitShell() {
  SRpcInit rpcInit;

  mgmtInitProcessShellMsg();

  int size = sizeof(SConnObj) * tsMaxShellConns;
  connList = (SConnObj *)malloc(size);
  if (connList == ((void*)0)) {
    mError("failed to malloc for connList to shell");
    return -1;
  }
  memset(connList, 0, size);

  int numOfThreads = tsNumOfCores * tsNumOfThreadsPerCore / 4.0;
  if (numOfThreads < 1) numOfThreads = 1;

  memset(&rpcInit, 0, sizeof(rpcInit));



  rpcInit.localIp = "0.0.0.0";

  rpcInit.localPort = tsMgmtShellPort;
  rpcInit.label = "MND-shell";
  rpcInit.numOfThreads = numOfThreads;
  rpcInit.fp = mgmtProcessMsgFromShell;
  rpcInit.bits = 20;
  rpcInit.numOfChanns = 1;
  rpcInit.sessionsPerChann = tsMaxShellConns;
  rpcInit.idMgmt = TAOS_ID_FREE;
  rpcInit.connType = TAOS_CONN_SOCKET_TYPE_S();
  rpcInit.idleTime = tsShellActivityTimer * 2000;
  rpcInit.qhandle = mgmtQhandle;
  rpcInit.afp = mgmtRetriveUserAuthInfo;

  pShellConn = taosOpenRpc(&rpcInit);
  if (pShellConn == ((void*)0)) {
    mError("failed to init tcp connection to shell");
    return -1;
  }

  return 0;
}
