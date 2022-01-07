
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int thandle; } ;
typedef int STaosRsp ;
typedef TYPE_1__ SConnObj ;


 int TSDB_MSG_TYPE_MULTI_METERINFO_RSP ;
 char* taosBuildRspMsgWithSize (int ,int ,int ) ;

__attribute__((used)) static char *mgmtForMultiAllocMsg(SConnObj *pConn, int32_t size, char **pMsg, STaosRsp **pRsp) {
  char *pStart = taosBuildRspMsgWithSize(pConn->thandle, TSDB_MSG_TYPE_MULTI_METERINFO_RSP, size);
  if (pStart == ((void*)0)) return 0;
  *pMsg = pStart;
  *pRsp = (STaosRsp *)(*pMsg);

  return pStart;
}
