
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int numOfIps; int ip; } ;
struct TYPE_11__ {int thandle; int killConnection; scalar_t__ streamId; scalar_t__ queryId; } ;
struct TYPE_8__ {int numOfIps; int ip; } ;
struct TYPE_10__ {TYPE_1__ ipList; int killConnection; scalar_t__ streamId; scalar_t__ queryId; } ;
struct TYPE_9__ {scalar_t__ more; scalar_t__ code; } ;
typedef TYPE_2__ STaosRsp ;
typedef TYPE_3__ SHeartBeatRsp ;
typedef TYPE_4__ SConnObj ;


 int TSDB_MSG_TYPE_HEARTBEAT_RSP ;
 int memcpy (int ,int ,int) ;
 int mgmtSaveQueryStreamList (char*,int,TYPE_4__*) ;
 TYPE_5__* pSdbPublicIpList ;
 char* taosBuildRspMsgWithSize (int ,int ,int) ;
 int taosSendMsgToPeer (int ,char*,int) ;

int mgmtProcessHeartBeatMsg(char *cont, int contLen, SConnObj *pConn) {
  char * pStart, *pMsg;
  int msgLen;
  STaosRsp *pRsp;

  mgmtSaveQueryStreamList(cont, contLen, pConn);

  pStart = taosBuildRspMsgWithSize(pConn->thandle, TSDB_MSG_TYPE_HEARTBEAT_RSP, 128);
  if (pStart == ((void*)0)) return 0;
  pMsg = pStart;
  pRsp = (STaosRsp *)pMsg;
  pRsp->code = 0;
  pMsg = (char *)pRsp->more;

  SHeartBeatRsp *pHBRsp = (SHeartBeatRsp *)pRsp->more;
  pHBRsp->queryId = pConn->queryId;
  pConn->queryId = 0;
  pHBRsp->streamId = pConn->streamId;
  pHBRsp->streamId = pConn->streamId;
  pConn->streamId = 0;
  pHBRsp->killConnection = pConn->killConnection;







  pMsg += sizeof(SHeartBeatRsp);

  msgLen = pMsg - pStart;

  taosSendMsgToPeer(pConn->thandle, pStart, msgLen);

  return 0;
}
