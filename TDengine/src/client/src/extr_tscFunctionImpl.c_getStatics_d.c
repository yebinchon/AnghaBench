
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;


 double DBL_MAX ;
 scalar_t__ INT16_MAX ;
 double TSDB_DATA_DOUBLE_NULL ;
 int TSDB_DATA_TYPE_DOUBLE ;
 int assert (int) ;
 scalar_t__ isNull (double*,int ) ;

__attribute__((used)) static void getStatics_d(int64_t *primaryKey, double *data, int32_t numOfRow, double *min, double *max, double *sum,
                         int16_t *minIndex, int16_t *maxIndex, int32_t *numOfNull) {
  double dmin = DBL_MAX;
  double dmax = -DBL_MAX;
  double dminIndex = 0;
  double dmaxIndex = 0;
  double dsum = 0;

  assert(numOfRow <= INT16_MAX);

  int64_t lastKey = 0;
  double lastVal = TSDB_DATA_DOUBLE_NULL;

  for (int32_t i = 0; i < numOfRow; ++i) {
    if (isNull(&data[i], TSDB_DATA_TYPE_DOUBLE)) {
      (*numOfNull) += 1;
      continue;
    }

    double dv = 0;
    *(int64_t*)(&dv) = *(int64_t*)(&(data[i]));


    dsum += dv;
    if (dmin > dv) {
      dmin = dv;
      dminIndex = i;
    }

    if (dmax < dv) {
      dmax = dv;
      dmaxIndex = i;
    }
  }

  double csum = 0;
  *(int64_t*)(&csum) = *(int64_t*)sum;
  csum += dsum;
  *(int64_t*)(sum) = *(int64_t*)(&csum);

  *(int64_t*)max = *(int64_t*)(&dmax);
  *(int64_t*)min = *(int64_t*)(&dmin);
  *(int64_t*)minIndex = *(int64_t*)(&dminIndex);
  *(int64_t*)maxIndex = *(int64_t*)(&dmaxIndex);
}
