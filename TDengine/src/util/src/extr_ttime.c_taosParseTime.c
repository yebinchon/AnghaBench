
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int32_t ;


 int parseLocaltime (char*,int *,int ) ;
 int parseTimeWithTz (char*,int *,int ) ;
 int * strnchr (char*,char,int ,int) ;

int32_t taosParseTime(char* timestr, int64_t* time, int32_t len, int32_t timePrec) {

  if (strnchr(timestr, 'T', len, 0) != ((void*)0)) {
    return parseTimeWithTz(timestr, time, timePrec);
  } else {
    return parseLocaltime(timestr, time, timePrec);
  }
}
