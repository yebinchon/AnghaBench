
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {double val; } ;
typedef TYPE_1__ SHistBin ;



int32_t vnodeHistobinarySearch(SHistBin* pEntry, int32_t len, double val) {
  int32_t end = len - 1;
  int32_t start = 0;

  while (start <= end) {
    int32_t mid = (end - start) / 2 + start;
    if (pEntry[mid].val == val) {
      return mid;
    }

    if (pEntry[mid].val < val) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }

  int32_t ret = start > end ? start : end;
  if (ret < 0) {
    return 0;
  } else {
    return ret;
  }
}
