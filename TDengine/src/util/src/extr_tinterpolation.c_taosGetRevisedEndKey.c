
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;
typedef scalar_t__ int32_t ;
typedef int TSKEY ;


 scalar_t__ TSQL_SO_ASC ;
 int taosGetIntervalStartTimestamp (int ,scalar_t__,int ,int ) ;

TSKEY taosGetRevisedEndKey(TSKEY ekey, int32_t order, int32_t timeInterval, int8_t intervalTimeUnit, int8_t precision) {
  if (order == TSQL_SO_ASC) {
    return ekey;
  } else {
    return taosGetIntervalStartTimestamp(ekey, timeInterval, intervalTimeUnit, precision);
  }
}
