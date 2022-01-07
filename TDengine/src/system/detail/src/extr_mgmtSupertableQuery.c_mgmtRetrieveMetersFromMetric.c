
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int tSkipListNode ;
struct TYPE_19__ {scalar_t__ num; int pRes; int member_0; } ;
typedef TYPE_1__ tQueryResultset ;
typedef size_t int32_t ;
struct TYPE_23__ {scalar_t__ nSize; } ;
struct TYPE_22__ {int cond; size_t condLen; int tableCond; int tableCondLen; int rel; int meterId; } ;
struct TYPE_21__ {int* metaElem; } ;
struct TYPE_20__ {scalar_t__ numOfMeters; int meterId; TYPE_6__* pSkipList; } ;
typedef TYPE_2__ STabObj ;
typedef TYPE_3__ SMetricMetaMsg ;
typedef TYPE_4__ SMetricMetaElemMsg ;


 int TSDB_CODE_SUCCESS ;
 size_t TSDB_NCHAR_SIZE ;
 int TSDB_RELATION_AND ;
 int TSDB_RELATION_OR ;
 int assert (int) ;
 char* calloc (int,int) ;
 int mTrace (char*,int ,...) ;
 int mgmtFilterByTableNameCond (TYPE_1__*,char*,int,TYPE_2__*) ;
 size_t mgmtFilterMeterByIndex (TYPE_2__*,TYPE_1__*,char*,size_t) ;
 TYPE_2__* mgmtGetMeter (int ) ;
 int queryResultIntersect (TYPE_1__*,TYPE_1__*) ;
 int queryResultUnion (TYPE_1__*,TYPE_1__*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int tQueryResultClean (TYPE_1__*) ;
 scalar_t__ tSkipListIterateList (TYPE_6__*,int ***,int *,int *) ;
 int tansformQueryResult (TYPE_1__*) ;
 int taosUcs4ToMbs (char*,size_t,char*) ;
 int tfree (char*) ;

int mgmtRetrieveMetersFromMetric(SMetricMetaMsg* pMsg, int32_t tableIndex, tQueryResultset* pRes) {
  SMetricMetaElemMsg* pElem = (SMetricMetaElemMsg*)((char*)pMsg + pMsg->metaElem[tableIndex]);
  STabObj* pMetric = mgmtGetMeter(pElem->meterId);
  char* pCond = ((void*)0);
  char* tmpTableNameCond = ((void*)0);


  if (pMetric->pSkipList == ((void*)0) || pMetric->pSkipList->nSize == 0) {
    assert(pMetric->numOfMeters == 0);
    return TSDB_CODE_SUCCESS;
  }

  char* pQueryCond = (char*)pMsg + pElem->cond;
  int32_t condLen = pElem->condLen;


  if (condLen > 0) {
    pCond = calloc(1, (condLen + 1) * TSDB_NCHAR_SIZE);

    taosUcs4ToMbs(pQueryCond, condLen * TSDB_NCHAR_SIZE, pCond);
    condLen = strlen(pCond) + 1;
    mTrace("metric:%s len:%d, metric query condition:%s", pMetric->meterId, condLen, pCond);
  }

  char* tablenameCond = (char*)pMsg + pElem->tableCond;

  if (pElem->tableCondLen > 0) {
    tmpTableNameCond = calloc(1, pElem->tableCondLen + 1);
    strncpy(tmpTableNameCond, tablenameCond, pElem->tableCondLen);

    mTrace("metric:%s rel:%d, len:%d, table name cond:%s", pMetric->meterId, pElem->rel, pElem->tableCondLen,
           tmpTableNameCond);
  }

  if (pElem->tableCondLen > 0 || condLen > 0) {
    mgmtFilterByTableNameCond(pRes, tmpTableNameCond, pElem->tableCondLen, pMetric);

    bool noNextCal = (pRes->num == 0 && pElem->rel == TSDB_RELATION_AND);

    if (!noNextCal && condLen > 0) {
      tQueryResultset filterRes = {0};

      int32_t ret = mgmtFilterMeterByIndex(pMetric, &filterRes, pCond, condLen);
      if (ret != TSDB_CODE_SUCCESS) {
        tfree(pCond);
        tfree(tmpTableNameCond);

        return ret;
      }


      assert(pElem->rel == TSDB_RELATION_AND || pElem->rel == TSDB_RELATION_OR);

      if (pElem->rel == TSDB_RELATION_AND) {
        if (filterRes.num == 0 || pRes->num == 0) {
          tQueryResultClean(pRes);
        } else {
          queryResultIntersect(pRes, &filterRes);
        }
      } else {
        queryResultUnion(pRes, &filterRes);
      }

      tQueryResultClean(&filterRes);
    }
  } else {
    mTrace("metric:%s retrieve all meter, no query condition", pMetric->meterId);
    pRes->num = tSkipListIterateList(pMetric->pSkipList, (tSkipListNode***)&pRes->pRes, ((void*)0), ((void*)0));
    tansformQueryResult(pRes);
  }

  tfree(pCond);
  tfree(tmpTableNameCond);

  mTrace("metric:%s numOfRes:%d", pMetric->meterId, pRes->num);
  return TSDB_CODE_SUCCESS;
}
