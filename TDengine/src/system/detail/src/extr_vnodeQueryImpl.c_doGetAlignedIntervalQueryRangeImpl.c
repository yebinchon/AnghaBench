
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ nAggTimeInterval; int precision; int intervalTimeUnit; } ;
typedef TYPE_1__ SQuery ;


 scalar_t__ INT64_MAX ;
 int assert (int) ;
 scalar_t__ taosGetIntervalStartTimestamp (scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static void doGetAlignedIntervalQueryRangeImpl(SQuery *pQuery, int64_t qualifiedKey, int64_t keyFirst, int64_t keyLast,
                                               int64_t *skey, int64_t *ekey) {
  assert(qualifiedKey >= keyFirst && qualifiedKey <= keyLast);

  if (keyFirst > (INT64_MAX - pQuery->nAggTimeInterval)) {




    assert(keyLast - keyFirst < pQuery->nAggTimeInterval);

    *skey = keyFirst;
    *ekey = keyLast;
    return;
  }

  *skey = taosGetIntervalStartTimestamp(qualifiedKey, pQuery->nAggTimeInterval, pQuery->intervalTimeUnit,
                                        pQuery->precision);
  int64_t endKey = *skey + pQuery->nAggTimeInterval - 1;

  if (*skey < keyFirst) {
    *skey = keyFirst;
  }

  if (endKey < keyLast) {
    *ekey = endKey;
  } else {
    *ekey = keyLast;
  }
}
