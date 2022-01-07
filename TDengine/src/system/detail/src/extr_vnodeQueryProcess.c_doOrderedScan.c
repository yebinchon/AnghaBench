
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* pMeterDataInfo; } ;
struct TYPE_6__ {scalar_t__ code; int query; TYPE_2__* pMeterQuerySupporter; } ;
typedef int SQuery ;
typedef TYPE_1__ SQInfo ;
typedef TYPE_2__ SMeterQuerySupportObj ;


 scalar_t__ QUERY_IS_ASC_QUERY (int *) ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 void* queryOnMultiDataCache (TYPE_1__*,void*) ;
 void* queryOnMultiDataFiles (TYPE_1__*,void*) ;

__attribute__((used)) static void doOrderedScan(SQInfo *pQInfo) {
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQuery * pQuery = &pQInfo->query;

  if (QUERY_IS_ASC_QUERY(pQuery)) {
    pSupporter->pMeterDataInfo = queryOnMultiDataFiles(pQInfo, pSupporter->pMeterDataInfo);
    if (pQInfo->code != TSDB_CODE_SUCCESS) {
      return;
    }

    pSupporter->pMeterDataInfo = queryOnMultiDataCache(pQInfo, pSupporter->pMeterDataInfo);
  } else {
    pSupporter->pMeterDataInfo = queryOnMultiDataCache(pQInfo, pSupporter->pMeterDataInfo);
    if (pQInfo->code != TSDB_CODE_SUCCESS) {
      return;
    }

    pSupporter->pMeterDataInfo = queryOnMultiDataFiles(pQInfo, pSupporter->pMeterDataInfo);
  }
}
