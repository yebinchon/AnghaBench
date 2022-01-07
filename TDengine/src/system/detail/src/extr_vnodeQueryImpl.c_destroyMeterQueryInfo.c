
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_4__ {struct TYPE_4__* resultInfo; int interResultBuf; struct TYPE_4__* pageList; } ;
typedef TYPE_1__ SMeterQueryInfo ;


 int free (TYPE_1__*) ;
 int tfree (int ) ;

void destroyMeterQueryInfo(SMeterQueryInfo *pMeterQueryInfo, int32_t numOfCols) {
  if (pMeterQueryInfo == ((void*)0)) {
    return;
  }

  free(pMeterQueryInfo->pageList);
  for (int32_t i = 0; i < numOfCols; ++i) {
    tfree(pMeterQueryInfo->resultInfo[i].interResultBuf);
  }

  free(pMeterQueryInfo->resultInfo);
  free(pMeterQueryInfo);
}
