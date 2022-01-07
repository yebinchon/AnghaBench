
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pQuery; } ;
typedef TYPE_1__ SQueryRuntimeEnv ;
typedef int SQuery ;
typedef int SMeterObj ;


 int QUERY_NOT_COMPLETED ;
 int hasDataInCache (TYPE_1__*,int *) ;
 int hasDataInDisk (int *,int *) ;
 int setQueryStatus (int *,int ) ;

void vnodeCheckIfDataExists(SQueryRuntimeEnv *pRuntimeEnv, SMeterObj *pMeterObj, bool *dataInDisk, bool *dataInCache) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  *dataInCache = hasDataInCache(pRuntimeEnv, pMeterObj);
  *dataInDisk = hasDataInDisk(pQuery, pMeterObj);

  setQueryStatus(pQuery, QUERY_NOT_COMPLETED);
}
