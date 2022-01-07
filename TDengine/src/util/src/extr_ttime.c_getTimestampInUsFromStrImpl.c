
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long int64_t ;
typedef int int32_t ;


 long MILLISECOND_PER_DAY ;
 long MILLISECOND_PER_HOUR ;
 long MILLISECOND_PER_MINUTE ;
 long MILLISECOND_PER_MONTH ;
 long MILLISECOND_PER_SECOND ;
 long MILLISECOND_PER_WEEK ;
 long MILLISECOND_PER_YEAR ;

__attribute__((used)) static int32_t getTimestampInUsFromStrImpl(int64_t val, char unit, int64_t* result) {
  *result = val;

  switch (unit) {
    case 's':
      (*result) *= MILLISECOND_PER_SECOND;
      break;
    case 'm':
      (*result) *= MILLISECOND_PER_MINUTE;
      break;
    case 'h':
      (*result) *= MILLISECOND_PER_HOUR;
      break;
    case 'd':
      (*result) *= MILLISECOND_PER_DAY;
      break;
    case 'w':
      (*result) *= MILLISECOND_PER_WEEK;
      break;
    case 'n':
      (*result) *= MILLISECOND_PER_MONTH;
      break;
    case 'y':
      (*result) *= MILLISECOND_PER_YEAR;
      break;
    case 'a':
      break;
    default: {
      ;
      return -1;
    }
  }


  (*result) *= 1000L;
  return 0;
}
