
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_5__ {size_t numOfMeters; int rawEKey; int rawSKey; TYPE_1__* pMeterDataInfo; } ;
struct TYPE_4__ {int * pMeterQInfo; } ;
typedef TYPE_2__ SMeterQuerySupportObj ;
typedef int SMeterQueryInfo ;


 int changeMeterQueryInfoForSuppleQuery (int *,int ,int ) ;

__attribute__((used)) static void setupMeterQueryInfoForSupplementQuery(SMeterQuerySupportObj *pSupporter) {
  for (int32_t i = 0; i < pSupporter->numOfMeters; ++i) {
    SMeterQueryInfo *pMeterQueryInfo = pSupporter->pMeterDataInfo[i].pMeterQInfo;
    changeMeterQueryInfoForSuppleQuery(pMeterQueryInfo, pSupporter->rawSKey, pSupporter->rawEKey);
  }
}
