
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int nAlloc; int * pData; } ;
typedef TYPE_1__ SDataBlockList ;


 int POINTER_BYTES ;
 void* calloc (int,int) ;
 int free (TYPE_1__*) ;

SDataBlockList* tscCreateBlockArrayList() {
  const int32_t DEFAULT_INITIAL_NUM_OF_BLOCK = 16;

  SDataBlockList* pDataBlockArrayList = calloc(1, sizeof(SDataBlockList));
  if (pDataBlockArrayList == ((void*)0)) {
    return ((void*)0);
  }
  pDataBlockArrayList->nAlloc = DEFAULT_INITIAL_NUM_OF_BLOCK;
  pDataBlockArrayList->pData = calloc(1, POINTER_BYTES * pDataBlockArrayList->nAlloc);
  if (pDataBlockArrayList->pData == ((void*)0)) {
    free(pDataBlockArrayList);
    return ((void*)0);
  }

  return pDataBlockArrayList;
}
