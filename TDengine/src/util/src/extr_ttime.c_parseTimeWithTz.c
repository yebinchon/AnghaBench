
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int member_0; } ;
typedef int int64_t ;
typedef int int32_t ;


 int TSDB_TIME_PRECISION_MILLI ;
 char* forwardToTimeStringEnd (char*) ;
 int gmtime (struct tm*) ;
 int parseFraction (char*,char**,int) ;
 int parseTimezone (char*,int*) ;
 char* strptime (char*,char*,struct tm*) ;
 int timegm (struct tm*) ;

int32_t parseTimeWithTz(char* timestr, int64_t* time, int32_t timePrec) {
  int64_t factor = (timePrec == TSDB_TIME_PRECISION_MILLI) ? 1000 : 1000000;
  int64_t tzOffset = 0;

  struct tm tm = {0};
  char* str = strptime(timestr, "%Y-%m-%dT%H:%M:%S", &tm);
  if (str == ((void*)0)) {
    return -1;
  }





  int64_t seconds = timegm(&tm);


  int64_t fraction = 0;
  str = forwardToTimeStringEnd(timestr);

  if (str[0] == 'Z' || str[0] == 'z') {

    *time = seconds * factor;
  } else if (str[0] == '.') {
    str += 1;
    if ((fraction = parseFraction(str, &str, timePrec)) < 0) {
      return -1;
    }

    *time = seconds * factor + fraction;

    char seg = str[0];
    if (seg != 'Z' && seg != 'z' && seg != '+' && seg != '-') {
      return -1;
    } else if (seg == '+' || seg == '-') {

      if (parseTimezone(str, &tzOffset) == -1) {
        return -1;
      }

      *time += tzOffset * factor;
    }

  } else if (str[0] == '+' || str[0] == '-') {
    *time = seconds * factor + fraction;


    if (parseTimezone(str, &tzOffset) == -1) {
      return -1;
    }

    *time += tzOffset * factor;
  } else {
    return -1;
  }

  return 0;
}
