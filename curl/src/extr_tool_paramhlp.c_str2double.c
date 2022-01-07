
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
 double strtod (char const*,char**) ;

__attribute__((used)) static ParameterError str2double(double *val, const char *str, long max)
{
  if(str) {
    char *endptr;
    double num;
    errno = 0;
    num = strtod(str, &endptr);
    if(errno == ERANGE)
      return PARAM_NUMBER_TOO_LARGE;
    if(num > max) {

      return PARAM_NUMBER_TOO_LARGE;
    }
    if((endptr != str) && (endptr == str + strlen(str))) {
      *val = num;
      return PARAM_OK;
    }
  }
  return PARAM_BAD_NUMERIC;
}
