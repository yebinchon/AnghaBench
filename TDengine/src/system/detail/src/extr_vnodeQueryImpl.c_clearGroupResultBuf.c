
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tFilePage ;
typedef size_t int32_t ;
struct TYPE_6__ {int nAlloc; int * result; TYPE_1__* resultInfo; } ;
struct TYPE_5__ {int bufLen; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SOutputRes ;


 int memset (int ,int ,size_t) ;
 int resetResultInfo (TYPE_1__*) ;

void clearGroupResultBuf(SOutputRes *pOneOutputRes, int32_t nOutputCols) {
  if (pOneOutputRes == ((void*)0)) {
    return;
  }

  for (int32_t i = 0; i < nOutputCols; ++i) {
    SResultInfo *pResInfo = &pOneOutputRes->resultInfo[i];
    int32_t size = sizeof(tFilePage) + pResInfo->bufLen * pOneOutputRes->nAlloc;

    memset(pOneOutputRes->result[i], 0, (size_t)size);
    resetResultInfo(pResInfo);
  }
}
