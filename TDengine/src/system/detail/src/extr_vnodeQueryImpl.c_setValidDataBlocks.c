
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_3__ {size_t start; size_t numOfBlocks; int ** pBlock; } ;
typedef TYPE_1__ SMeterDataInfo ;
typedef int SCompBlock ;


 size_t POINTER_BYTES ;
 int assert (int) ;
 char* realloc (int **,size_t) ;

__attribute__((used)) static bool setValidDataBlocks(SMeterDataInfo *pMeterDataInfo, SCompBlock *pCompBlock, int32_t end) {
  int32_t size = (end - pMeterDataInfo->start) + 1;
  assert(size > 0);

  if (size != pMeterDataInfo->numOfBlocks) {
    char *tmp = realloc(pMeterDataInfo->pBlock, POINTER_BYTES * size);
    if (tmp == ((void*)0)) {
      return 0;
    }

    pMeterDataInfo->pBlock = (SCompBlock **)tmp;
    pMeterDataInfo->numOfBlocks = size;
  }

  for (int32_t i = pMeterDataInfo->start, j = 0; i <= end; ++i, ++j) {
    pMeterDataInfo->pBlock[j] = &pCompBlock[i];
  }

  return 1;
}
