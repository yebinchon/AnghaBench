
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ TSDB_TIME_PRECISION_MICRO ;
 int taosGetTimestampMs () ;
 int taosGetTimestampUs () ;

int64_t taosGetTimestamp(int32_t precision) {
  if (precision == TSDB_TIME_PRECISION_MICRO) {
    return taosGetTimestampUs();
  } else {
    return taosGetTimestampMs();
  }
}
