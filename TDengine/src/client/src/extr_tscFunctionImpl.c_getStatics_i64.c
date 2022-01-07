
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;


 scalar_t__ INT16_MAX ;
 scalar_t__ INT64_MAX ;
 scalar_t__ INT64_MIN ;
 scalar_t__ TSDB_DATA_BIGINT_NULL ;
 int TSDB_DATA_TYPE_BIGINT ;
 int assert (int) ;
 scalar_t__ isNull (scalar_t__*,int ) ;

__attribute__((used)) static void getStatics_i64(int64_t *primaryKey, int64_t *data, int32_t numOfRow, int64_t *min, int64_t *max,
                           int64_t *sum, int16_t *minIndex, int16_t *maxIndex, int32_t *numOfNull) {
  *min = INT64_MAX;
  *max = INT64_MIN;
  *minIndex = 0;
  *maxIndex = 0;

  assert(numOfRow <= INT16_MAX);

  int64_t lastKey = 0;
  int64_t lastVal = TSDB_DATA_BIGINT_NULL;

  for (int32_t i = 0; i < numOfRow; ++i) {
    if (isNull(&data[i], TSDB_DATA_TYPE_BIGINT)) {
      (*numOfNull) += 1;
      continue;
    }

    *sum += data[i];
    if (*min > data[i]) {
      *min = data[i];
      *minIndex = i;
    }

    if (*max < data[i]) {
      *max = data[i];
      *maxIndex = i;
    }
  }
}
