
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;


 int TSDB_DATA_TYPE_BIGINT ;
 int TSDB_DATA_TYPE_BINARY ;
 int TSDB_DATA_TYPE_BOOL ;
 int TSDB_DATA_TYPE_DOUBLE ;
 int TSDB_DATA_TYPE_FLOAT ;
 int TSDB_DATA_TYPE_INT ;
 int TSDB_DATA_TYPE_NCHAR ;
 int TSDB_DATA_TYPE_SMALLINT ;
 int TSDB_DATA_TYPE_TIMESTAMP ;
 int TSDB_DATA_TYPE_TINYINT ;
 int getStatics_d (int *,double*,int,int *,int *,int *,int *,int *,int*) ;
 int getStatics_f (int *,float*,int,int *,int *,int *,int *,int *,int*) ;
 int getStatics_i16 (int *,int *,int,int *,int *,int *,int *,int *,int*) ;
 int getStatics_i32 (int *,int*,int,int *,int *,int *,int *,int *,int*) ;
 int getStatics_i64 (int *,int *,int,int *,int *,int *,int *,int *,int*) ;
 int getStatics_i8 (int *,int,int *,int,int *,int *,int *,int *,int *,int*) ;
 scalar_t__ isNull (char*,int) ;

void getStatistics(char *priData, char *data, int32_t size, int32_t numOfRow, int32_t type, int64_t *min, int64_t *max,
                   int64_t *sum, int16_t *minIndex, int16_t *maxIndex, int32_t *numOfNull) {
  int64_t *primaryKey = (int64_t *)priData;
  if (type == TSDB_DATA_TYPE_BINARY || type == TSDB_DATA_TYPE_NCHAR) {
    for (int32_t i = 0; i < numOfRow; ++i) {
      if (isNull(data + i * size, type)) {
        (*numOfNull) += 1;
        continue;
      }
    }
  } else {
    if (type == TSDB_DATA_TYPE_TINYINT || type == TSDB_DATA_TYPE_BOOL) {
      getStatics_i8(primaryKey, type, (int8_t *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    } else if (type == TSDB_DATA_TYPE_SMALLINT) {
      getStatics_i16(primaryKey, (int16_t *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    } else if (type == TSDB_DATA_TYPE_INT) {
      getStatics_i32(primaryKey, (int32_t *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    } else if (type == TSDB_DATA_TYPE_BIGINT || type == TSDB_DATA_TYPE_TIMESTAMP) {
      getStatics_i64(primaryKey, (int64_t *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    } else if (type == TSDB_DATA_TYPE_DOUBLE) {
      getStatics_d(primaryKey, (double *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    } else if (type == TSDB_DATA_TYPE_FLOAT) {
      getStatics_f(primaryKey, (float *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    }
  }
}
