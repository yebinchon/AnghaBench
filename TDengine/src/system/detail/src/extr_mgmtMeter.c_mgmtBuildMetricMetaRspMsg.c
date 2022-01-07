
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_9__ {scalar_t__ num; int ** pRes; } ;
typedef TYPE_1__ tQueryResultset ;
typedef scalar_t__ int32_t ;
typedef void* int16_t ;
struct TYPE_13__ {void* numOfVnodes; void* numOfMeters; void* tagLen; } ;
struct TYPE_12__ {int meterId; int tagCols; int numOfTags; } ;
struct TYPE_11__ {scalar_t__ numOfMeters; int* metaElem; } ;
struct TYPE_10__ {scalar_t__ code; } ;
typedef int SVnodeSidList ;
typedef TYPE_2__ STaosRsp ;
typedef int STabObj ;
typedef TYPE_3__ SMetricMetaMsg ;
typedef TYPE_4__ SMetricMetaElemMsg ;
typedef TYPE_5__ SMetricMeta ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 char TSDB_IE_TYPE_META ;
 int TSDB_MSG_TYPE_METRIC_META_RSP ;
 void* htonl (void*) ;
 void* htons (scalar_t__) ;
 int mTrace (char*,scalar_t__,...) ;
 char* mgmtBuildMetricMetaMsg (int *,int*,int **,TYPE_5__*,scalar_t__,int ,int ,scalar_t__,char*) ;
 char* taosBuildRspMsgWithSize (void*,int ,scalar_t__) ;

__attribute__((used)) static int32_t mgmtBuildMetricMetaRspMsg(void *thandle, SMetricMetaMsg *pMetricMetaMsg, tQueryResultset *pResult,
                                         char **pStart, int32_t *tagLen, int32_t rspMsgSize, int32_t maxTablePerVnode,
                                         int32_t code) {
  *pStart = taosBuildRspMsgWithSize(thandle, TSDB_MSG_TYPE_METRIC_META_RSP, rspMsgSize);
  if (*pStart == ((void*)0)) {
    return 0;
  }

  char * pMsg = (*pStart);
  STaosRsp *pRsp = (STaosRsp *)pMsg;

  pRsp->code = code;
  pMsg += sizeof(STaosRsp);
  *pMsg = TSDB_IE_TYPE_META;
  pMsg++;

  if (code != TSDB_CODE_SUCCESS) {
    return pMsg - (*pStart);
  }

  int32_t msgLen = 0;

  *(int16_t *)pMsg = htons(pMetricMetaMsg->numOfMeters);
  pMsg += sizeof(int16_t);

  for (int32_t j = 0; j < pMetricMetaMsg->numOfMeters; ++j) {
    SVnodeSidList *pList = ((void*)0);
    int ovgId = -1;

    SMetricMeta *pMeta = (SMetricMeta *)pMsg;

    pMeta->numOfMeters = 0;
    pMeta->numOfVnodes = 0;
    pMeta->tagLen = htons((uint16_t)tagLen[j]);

    pMsg = (char *)pMeta + sizeof(SMetricMeta);

    SMetricMetaElemMsg *pElem = (SMetricMetaElemMsg *)((char *)pMetricMetaMsg + pMetricMetaMsg->metaElem[j]);

    for (int32_t i = 0; i < pResult[j].num; ++i) {
      STabObj *pMeter = pResult[j].pRes[i];
      pMsg = mgmtBuildMetricMetaMsg(pMeter, &ovgId, &pList, pMeta, tagLen[j], pElem->numOfTags, pElem->tagCols,
                                    maxTablePerVnode, pMsg);
    }

    mTrace("metric:%s metric-meta tables:%d, vnode:%d", pElem->meterId, pMeta->numOfMeters, pMeta->numOfVnodes);

    pMeta->numOfMeters = htonl(pMeta->numOfMeters);
    pMeta->numOfVnodes = htonl(pMeta->numOfVnodes);
  }

  msgLen = pMsg - (*pStart);
  mTrace("metric-meta msg size %d", msgLen);

  return msgLen;
}
