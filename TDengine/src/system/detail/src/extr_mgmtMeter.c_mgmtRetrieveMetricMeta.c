
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t tQueryResultset ;
typedef scalar_t__ int64_t ;
typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_18__ {int meterId; int numOfTags; scalar_t__ tagCols; } ;
struct TYPE_17__ {int numOfMeters; int* metaElem; } ;
struct TYPE_16__ {TYPE_1__* pSkipList; } ;
struct TYPE_15__ {scalar_t__ nSize; } ;
typedef TYPE_2__ STabObj ;
typedef TYPE_3__ SMetricMetaMsg ;
typedef TYPE_4__ SMetricMetaElemMsg ;


 size_t INT32_MAX ;
 int TSDB_CODE_NOT_SUPER_TABLE ;
 int TSDB_CODE_SUCCESS ;
 size_t* calloc (int,int) ;
 TYPE_4__* doConvertMetricMetaMsg (TYPE_3__*,size_t) ;
 int free (size_t*) ;
 int mgmtBuildMetricMetaRspMsg (void*,TYPE_3__*,size_t*,char**,size_t*,int,size_t,int) ;
 int mgmtDoJoin (TYPE_3__*,size_t*) ;
 TYPE_2__* mgmtGetMeter (int ) ;
 scalar_t__ mgmtGetMetricMetaMsgSize (size_t*,size_t,size_t) ;
 size_t mgmtGetReqTagsLength (TYPE_2__*,int *,int ) ;
 int mgmtIsMetric (TYPE_2__*) ;
 int mgmtReorganizeMetersInMetricMeta (TYPE_3__*,size_t,size_t*) ;
 int mgmtRetrieveMetersFromMetric (TYPE_3__*,size_t,size_t*) ;
 int tQueryResultClean (size_t*) ;

int mgmtRetrieveMetricMeta(void *thandle, char **pStart, SMetricMetaMsg *pMetricMetaMsg) {







  int32_t maxMetersPerVNodeForQuery = INT32_MAX;
  int msgLen = 0;
  int ret = TSDB_CODE_SUCCESS;
  tQueryResultset *result = calloc(1, pMetricMetaMsg->numOfMeters * sizeof(tQueryResultset));
  int32_t * tagLen = calloc(1, sizeof(int32_t) * pMetricMetaMsg->numOfMeters);

  if (result == ((void*)0) || tagLen == ((void*)0)) {
    return -1;
  }

  for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
    SMetricMetaElemMsg *pElem = doConvertMetricMetaMsg(pMetricMetaMsg, i);
    STabObj * pMetric = mgmtGetMeter(pElem->meterId);

    if (!mgmtIsMetric(pMetric)) {
      ret = TSDB_CODE_NOT_SUPER_TABLE;
      break;
    }

    tagLen[i] = mgmtGetReqTagsLength(pMetric, (int16_t *)pElem->tagCols, pElem->numOfTags);
  }
  if (ret == TSDB_CODE_SUCCESS) {
    for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
      ret = mgmtRetrieveMetersFromMetric(pMetricMetaMsg, i, &result[i]);




    }
  }

  if (ret == TSDB_CODE_SUCCESS) {
    ret = mgmtDoJoin(pMetricMetaMsg, result);
  }

  if (ret == TSDB_CODE_SUCCESS) {
    for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
      mgmtReorganizeMetersInMetricMeta(pMetricMetaMsg, i, &result[i]);
    }
  }

  if (ret == TSDB_CODE_SUCCESS) {
    for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
      msgLen += mgmtGetMetricMetaMsgSize(&result[i], tagLen[i], maxMetersPerVNodeForQuery);
    }
  } else {
    msgLen = 512;
  }

  msgLen = mgmtBuildMetricMetaRspMsg(thandle, pMetricMetaMsg, result, pStart, tagLen, msgLen, maxMetersPerVNodeForQuery,
                                     ret);

  for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
    tQueryResultClean(&result[i]);
  }

  free(tagLen);
  free(result);

  return msgLen;
}
