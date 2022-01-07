
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParameterError ;


 scalar_t__ ERANGE ;
 int PARAM_BAD_NUMERIC ;
 int PARAM_NUMBER_TOO_LARGE ;
 int PARAM_OK ;
 scalar_t__ errno ;
 int strlen (char const*) ;
 long strtol (char const*,char**,int) ;

ParameterError str2num(long *val, const char *str)
{
  if(str) {
    char *endptr;
    long num;
    errno = 0;
    num = strtol(str, &endptr, 10);
    if(errno == ERANGE)
      return PARAM_NUMBER_TOO_LARGE;
    if((endptr != str) && (endptr == str + strlen(str))) {
      *val = num;
      return PARAM_OK;
    }
  }
  return PARAM_BAD_NUMERIC;
}
