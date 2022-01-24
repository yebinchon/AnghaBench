#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tOrderDescriptor ;
typedef  int int32_t ;
typedef  int (* __ext_compar_fn_t ) (void*,void*,int /*<<< orphan*/ *) ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_DATA_TYPE_BINARY ; 
 int /*<<< orphan*/  FUNC0 (void**,size_t,int,int,int /*<<< orphan*/ *,int (*) (void*,void*,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC1 (void**,size_t,int,int,int /*<<< orphan*/ *,int (*) (void*,void*,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC2 (void**,void**,int /*<<< orphan*/ ,size_t) ; 

void FUNC3(void **pMeterSids, size_t size, int32_t start, int32_t end, void *param, __ext_compar_fn_t compareFn) {
  tOrderDescriptor *pOrderDesc = (tOrderDescriptor *)param;

  // short array sort, incur another sort procedure instead of quick sort process
  if (end - start + 1 <= 8) {
    FUNC1(pMeterSids, size, start, end, pOrderDesc, compareFn);
    return;
  }

  FUNC0(pMeterSids, size, start, end, pOrderDesc, compareFn);

  int32_t s = start, e = end;
  int32_t endRightS = end, startLeftS = start;

  while (s < e) {
    while (e > s) {
      int32_t ret = compareFn(pMeterSids[e], pMeterSids[s], pOrderDesc);
      if (ret < 0) {
        break;
      }

      /*
       * move the data that equals to pivotal value to the right end of the list
       */
      if (ret == 0 && e != endRightS) {
        FUNC2(&pMeterSids[e], &pMeterSids[endRightS--], TSDB_DATA_TYPE_BINARY, size);
      }

      e--;
    }

    if (e != s) {
      FUNC2(&pMeterSids[e], &pMeterSids[s], TSDB_DATA_TYPE_BINARY, size);
    }

    while (s < e) {
      int32_t ret = compareFn(pMeterSids[s], pMeterSids[e], pOrderDesc);
      if (ret > 0) {
        break;
      }

      if (ret == 0 && s != startLeftS) {
        FUNC2(&pMeterSids[s], &pMeterSids[startLeftS++], TSDB_DATA_TYPE_BINARY, size);
      }
        s++;
    }

      if (e != s) {
        FUNC2(&pMeterSids[s], &pMeterSids[e], TSDB_DATA_TYPE_BINARY, size);
      }
  }

  int32_t rightPartStart = e + 1;
  if (endRightS != end && e < end) {
    int32_t left = rightPartStart;
    int32_t right = end;

    while (right > endRightS && left <= endRightS) {
      FUNC2(&pMeterSids[left++], &pMeterSids[right--], TSDB_DATA_TYPE_BINARY, size);
    }

    rightPartStart += (end - endRightS);
  }

  int32_t leftPartEnd = e - 1;
  if (startLeftS != end && s > start) {
    int32_t left = start;
    int32_t right = leftPartEnd;

    while (left < startLeftS && right >= startLeftS) {
      FUNC2(&pMeterSids[left++], &pMeterSids[right--], TSDB_DATA_TYPE_BINARY, size);
    }

    leftPartEnd -= (startLeftS - start);
  }

  if (leftPartEnd > start) {
    FUNC3(pMeterSids, size, start, leftPartEnd, pOrderDesc, compareFn);
  }

  if (rightPartStart < end) {
    FUNC3(pMeterSids, size, rightPartStart, end, pOrderDesc, compareFn);
  }
}