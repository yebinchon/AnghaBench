
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_9__ {int fileId; } ;
struct TYPE_8__ {TYPE_2__* pQuery; } ;
typedef TYPE_1__ SQueryRuntimeEnv ;
typedef TYPE_2__ SQuery ;
typedef int SMeterObj ;


 int GET_QINFO_ADDR (TYPE_2__*) ;
 scalar_t__ QUERY_ASC_FORWARD_STEP ;
 scalar_t__ TSQL_SO_ASC ;
 scalar_t__ TSQL_SO_DESC ;
 int dTrace (char*,int ) ;
 int vnodeFreeFieldsEx (TYPE_1__*) ;
 scalar_t__ vnodeGetCompBlockInfo (int *,TYPE_1__*,scalar_t__) ;
 scalar_t__ vnodeGetVnodeHeaderFileIdx (int*,TYPE_1__*,scalar_t__) ;

int32_t getNextDataFileCompInfo(SQueryRuntimeEnv *pRuntimeEnv, SMeterObj *pMeterObj, int32_t step) {
  SQuery *pQuery = pRuntimeEnv->pQuery;
  pQuery->fileId += step;

  int32_t fid = 0;
  int32_t order = (step == QUERY_ASC_FORWARD_STEP) ? TSQL_SO_ASC : TSQL_SO_DESC;
  while (1) {
    fid = vnodeGetVnodeHeaderFileIdx(&pQuery->fileId, pRuntimeEnv, order);


    if (fid < 0) {
      if (step == QUERY_ASC_FORWARD_STEP) {
        dTrace("QInfo:%p no file to access, try data in cache", GET_QINFO_ADDR(pQuery));
      } else {
        dTrace("QInfo:%p no file to access in desc order, query completed", GET_QINFO_ADDR(pQuery));
      }

      vnodeFreeFieldsEx(pRuntimeEnv);
      pQuery->fileId = -1;
      break;
    }

    if (vnodeGetCompBlockInfo(pMeterObj, pRuntimeEnv, fid) > 0) {
      break;
    }







    pQuery->fileId += step;


    if (step < 0 && fid == 0) {
      vnodeFreeFieldsEx(pRuntimeEnv);
      pQuery->fileId = -1;
      fid = -1;
      break;
    }
  }

  return fid;
}
