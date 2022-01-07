
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int killed; int * pObj; } ;
typedef int SQuery ;
typedef TYPE_1__ SQInfo ;
typedef int SMeterObj ;


 scalar_t__ GET_QINFO_ADDR (int *) ;
 int TSDB_METER_STATE_DELETING ;
 scalar_t__ vnodeIsMeterState (int *,int ) ;

bool isQueryKilled(SQuery *pQuery) {
  SQInfo *pQInfo = (SQInfo *)GET_QINFO_ADDR(pQuery);





  SMeterObj *pMeterObj = pQInfo->pObj;
  if (vnodeIsMeterState(pMeterObj, TSDB_METER_STATE_DELETING)) {
    pQInfo->killed = 1;
    return 1;
  }

  return (pQInfo->killed == 1);
}
