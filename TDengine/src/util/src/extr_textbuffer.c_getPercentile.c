
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numOfElems; } ;
typedef TYPE_1__ tMemBucket ;
typedef scalar_t__ int32_t ;


 double DBL_EPSILON ;
 double fabs (double) ;
 int findMaxMinValue (TYPE_1__*,double*,double*) ;
 double findOnlyResult (TYPE_1__*) ;
 double getPercentileImpl (TYPE_1__*,scalar_t__,scalar_t__) ;

double getPercentile(tMemBucket *pMemBucket, double percent) {
  if (pMemBucket->numOfElems == 0) {
    return 0.0;
  }

  if (pMemBucket->numOfElems == 1) {
    return findOnlyResult(pMemBucket);
  }

  percent = fabs(percent);


  if (fabs(percent - 100.0) < DBL_EPSILON || (percent < DBL_EPSILON)) {
    double minx = 0, maxx = 0;



    findMaxMinValue(pMemBucket, &maxx, &minx);

    return fabs(percent - 100) < DBL_EPSILON ? maxx : minx;
  }

  double percentVal = (percent * (pMemBucket->numOfElems - 1)) / ((double)100.0);
  int32_t orderIdx = (int32_t)percentVal;


  return getPercentileImpl(pMemBucket, orderIdx, percentVal - orderIdx);
}
