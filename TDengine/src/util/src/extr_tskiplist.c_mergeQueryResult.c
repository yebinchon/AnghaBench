
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tSkipListNode ;
typedef size_t int32_t ;
struct TYPE_3__ {size_t len; int ** pData; } ;
typedef TYPE_1__ MultipleQueryResult ;


 size_t POINTER_BYTES ;
 int ** malloc (size_t) ;

__attribute__((used)) static int32_t mergeQueryResult(MultipleQueryResult *pResults, int32_t numOfResSet, tSkipListNode ***pRes) {
  int32_t total = 0;
  for (int32_t i = 0; i < numOfResSet; ++i) {
    total += pResults[i].len;
  }

  (*pRes) = malloc(POINTER_BYTES * total);
  int32_t idx = 0;

  for (int32_t i = 0; i < numOfResSet; ++i) {
    MultipleQueryResult *pOneResult = &pResults[i];
    for (int32_t j = 0; j < pOneResult->len; ++j) {
      (*pRes)[idx++] = pOneResult->pData[j];
    }
  }

  return total;
}
