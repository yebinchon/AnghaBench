
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int orderIdx; int pTagSchema; } ;
typedef TYPE_1__ tOrderDescriptor ;
typedef int int32_t ;
typedef int (* __ext_compar_fn_t ) (void*,void*,TYPE_1__*) ;


 int TSDB_DATA_TYPE_BINARY ;
 int assert (int) ;
 int tTagsPrints (void*,int ,int *) ;
 int tsDataSwap (void**,void**,int ,size_t) ;

__attribute__((used)) static void median(void **pMeterSids, size_t size, int32_t s1, int32_t s2, tOrderDescriptor *pOrderDesc,
                   __ext_compar_fn_t compareFn) {
  int32_t midIdx = ((s2 - s1) >> 1) + s1;

  if (compareFn(pMeterSids[midIdx], pMeterSids[s1], pOrderDesc) == 1) {
    tsDataSwap(&pMeterSids[midIdx], &pMeterSids[s1], TSDB_DATA_TYPE_BINARY, size);
  }

  if (compareFn(pMeterSids[midIdx], pMeterSids[s2], pOrderDesc) == 1) {
    tsDataSwap(&pMeterSids[midIdx], &pMeterSids[s1], TSDB_DATA_TYPE_BINARY, size);
    tsDataSwap(&pMeterSids[midIdx], &pMeterSids[s2], TSDB_DATA_TYPE_BINARY, size);
  } else if (compareFn(pMeterSids[s1], pMeterSids[s2], pOrderDesc) == 1) {
    tsDataSwap(&pMeterSids[s1], &pMeterSids[s2], TSDB_DATA_TYPE_BINARY, size);
  }

  assert(compareFn(pMeterSids[midIdx], pMeterSids[s1], pOrderDesc) <= 0 &&
         compareFn(pMeterSids[s1], pMeterSids[s2], pOrderDesc) <= 0);






}
