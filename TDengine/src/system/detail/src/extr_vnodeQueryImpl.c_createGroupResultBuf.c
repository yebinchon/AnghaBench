
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tFilePage ;
typedef size_t int32_t ;
struct TYPE_10__ {size_t nAlloc; TYPE_2__** result; int * resultInfo; } ;
struct TYPE_9__ {size_t numOfOutputCols; TYPE_1__* pSelectExpr; } ;
struct TYPE_8__ {scalar_t__ numOfElems; } ;
struct TYPE_7__ {size_t interResBytes; } ;
typedef int SResultInfo ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SOutputRes ;


 size_t POINTER_BYTES ;
 int * calloc (size_t,int) ;
 void* malloc (int) ;
 int setResultInfoBuf (int *,size_t,int) ;

void createGroupResultBuf(SQuery *pQuery, SOutputRes *pOneResult, bool isMetricQuery) {
  int32_t numOfOutput = pQuery->numOfOutputCols;

  pOneResult->resultInfo = calloc((size_t)numOfOutput, sizeof(SResultInfo));

  pOneResult->result = malloc(POINTER_BYTES * numOfOutput);
  for (int32_t i = 0; i < numOfOutput; ++i) {
    size_t size = pQuery->pSelectExpr[i].interResBytes;
    SResultInfo *pResInfo = &pOneResult->resultInfo[i];

    pOneResult->result[i] = malloc(sizeof(tFilePage) + size * pOneResult->nAlloc);
    pOneResult->result[i]->numOfElems = 0;

    setResultInfoBuf(pResInfo, (int32_t)size, isMetricQuery);
  }
}
