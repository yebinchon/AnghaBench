#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int numOfElems; } ;
typedef  TYPE_1__ tMemBucket ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 double DBL_EPSILON ; 
 double FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,double*,double*) ; 
 double FUNC2 (TYPE_1__*) ; 
 double FUNC3 (TYPE_1__*,scalar_t__,scalar_t__) ; 

double FUNC4(tMemBucket *pMemBucket, double percent) {
  if (pMemBucket->numOfElems == 0) {
    return 0.0;
  }

  if (pMemBucket->numOfElems == 1) {  // return the only element
    return FUNC2(pMemBucket);
  }

  percent = FUNC0(percent);

  // validate the parameters
  if (FUNC0(percent - 100.0) < DBL_EPSILON || (percent < DBL_EPSILON)) {
    double minx = 0, maxx = 0;
    /*
     * find the min/max value, no need to scan all data in bucket
     */
    FUNC1(pMemBucket, &maxx, &minx);

    return FUNC0(percent - 100) < DBL_EPSILON ? maxx : minx;
  }

  double  percentVal = (percent * (pMemBucket->numOfElems - 1)) / ((double)100.0);
  int32_t orderIdx = (int32_t)percentVal;

  // do put data by using buckets
  return FUNC3(pMemBucket, orderIdx, percentVal - orderIdx);
}