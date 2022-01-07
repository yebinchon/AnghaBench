
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOrderDescriptor ;
typedef int int32_t ;
typedef int (* __ext_compar_fn_t ) (void*,void*,int *) ;


 int TSDB_DATA_TYPE_BINARY ;
 int median (void**,size_t,int,int,int *,int (*) (void*,void*,int *)) ;
 int tInsertSort (void**,size_t,int,int,int *,int (*) (void*,void*,int *)) ;
 int tsDataSwap (void**,void**,int ,size_t) ;

void tQSortEx(void **pMeterSids, size_t size, int32_t start, int32_t end, void *param, __ext_compar_fn_t compareFn) {
  tOrderDescriptor *pOrderDesc = (tOrderDescriptor *)param;


  if (end - start + 1 <= 8) {
    tInsertSort(pMeterSids, size, start, end, pOrderDesc, compareFn);
    return;
  }

  median(pMeterSids, size, start, end, pOrderDesc, compareFn);

  int32_t s = start, e = end;
  int32_t endRightS = end, startLeftS = start;

  while (s < e) {
    while (e > s) {
      int32_t ret = compareFn(pMeterSids[e], pMeterSids[s], pOrderDesc);
      if (ret < 0) {
        break;
      }




      if (ret == 0 && e != endRightS) {
        tsDataSwap(&pMeterSids[e], &pMeterSids[endRightS--], TSDB_DATA_TYPE_BINARY, size);
      }

      e--;
    }

    if (e != s) {
      tsDataSwap(&pMeterSids[e], &pMeterSids[s], TSDB_DATA_TYPE_BINARY, size);
    }

    while (s < e) {
      int32_t ret = compareFn(pMeterSids[s], pMeterSids[e], pOrderDesc);
      if (ret > 0) {
        break;
      }

      if (ret == 0 && s != startLeftS) {
        tsDataSwap(&pMeterSids[s], &pMeterSids[startLeftS++], TSDB_DATA_TYPE_BINARY, size);
      }
        s++;
    }

      if (e != s) {
        tsDataSwap(&pMeterSids[s], &pMeterSids[e], TSDB_DATA_TYPE_BINARY, size);
      }
  }

  int32_t rightPartStart = e + 1;
  if (endRightS != end && e < end) {
    int32_t left = rightPartStart;
    int32_t right = end;

    while (right > endRightS && left <= endRightS) {
      tsDataSwap(&pMeterSids[left++], &pMeterSids[right--], TSDB_DATA_TYPE_BINARY, size);
    }

    rightPartStart += (end - endRightS);
  }

  int32_t leftPartEnd = e - 1;
  if (startLeftS != end && s > start) {
    int32_t left = start;
    int32_t right = leftPartEnd;

    while (left < startLeftS && right >= startLeftS) {
      tsDataSwap(&pMeterSids[left++], &pMeterSids[right--], TSDB_DATA_TYPE_BINARY, size);
    }

    leftPartEnd -= (startLeftS - start);
  }

  if (leftPartEnd > start) {
    tQSortEx(pMeterSids, size, start, leftPartEnd, pOrderDesc, compareFn);
  }

  if (rightPartStart < end) {
    tQSortEx(pMeterSids, size, rightPartStart, end, pOrderDesc, compareFn);
  }
}
