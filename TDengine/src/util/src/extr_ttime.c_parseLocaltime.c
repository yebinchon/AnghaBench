
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int member_0; } ;
typedef int int64_t ;
typedef int int32_t ;


 int TSDB_TIME_PRECISION_MILLI ;
 int mktime (struct tm*) ;
 int parseFraction (char*,char**,int) ;
 char* strptime (char*,char*,struct tm*) ;

int32_t parseLocaltime(char* timestr, int64_t* time, int32_t timePrec) {
  *time = 0;
  struct tm tm = {0};

  char* str = strptime(timestr, "%Y-%m-%d %H:%M:%S", &tm);
  if (str == ((void*)0)) {
    return -1;
  }


  int64_t seconds = mktime(&tm);
  int64_t fraction = 0;

  if (*str == '.') {

    if ((fraction = parseFraction(str + 1, &str, timePrec)) < 0) {
      return -1;
    }
  }

  int64_t factor = (timePrec == TSDB_TIME_PRECISION_MILLI) ? 1000 : 1000000;
  *time = factor * seconds + fraction;

  return 0;
}
