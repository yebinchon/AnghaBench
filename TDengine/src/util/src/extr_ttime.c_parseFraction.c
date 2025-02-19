
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int32_t ;


 int TSDB_TIME_PRECISION_MICRO ;
 int TSDB_TIME_PRECISION_MILLI ;
 int assert (int) ;
 int strnatoi (char*,int) ;

int64_t parseFraction(char* str, char** end, int32_t timePrec) {
  int32_t i = 0;
  int64_t fraction = 0;

  const int32_t MILLI_SEC_FRACTION_LEN = 3;
  const int32_t MICRO_SEC_FRACTION_LEN = 6;

  int32_t factor[6] = {1, 10, 100, 1000, 10000, 100000};
  int32_t times = 1;

  while (str[i] >= '0' && str[i] <= '9') {
    i++;
  }

  int32_t totalLen = i;
  if (totalLen <= 0) {
    return -1;
  }


  if (timePrec == TSDB_TIME_PRECISION_MILLI) {

    if (i >= MILLI_SEC_FRACTION_LEN) {
      i = MILLI_SEC_FRACTION_LEN;
    }

    times = MILLI_SEC_FRACTION_LEN - i;
  } else {
    assert(timePrec == TSDB_TIME_PRECISION_MICRO);
    if (i >= MICRO_SEC_FRACTION_LEN) {
      i = MICRO_SEC_FRACTION_LEN;
    }
    times = MICRO_SEC_FRACTION_LEN - i;
  }

  fraction = strnatoi(str, i) * factor[times];
  *end = str + totalLen;

  return fraction;
}
