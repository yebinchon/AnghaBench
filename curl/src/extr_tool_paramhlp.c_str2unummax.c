
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ParameterError ;


 scalar_t__ PARAM_NUMBER_TOO_LARGE ;
 scalar_t__ PARAM_OK ;
 scalar_t__ str2unum (long*,char const*) ;

ParameterError str2unummax(long *val, const char *str, long max)
{
  ParameterError result = str2unum(val, str);
  if(result != PARAM_OK)
    return result;
  if(*val > max)
    return PARAM_NUMBER_TOO_LARGE;

  return PARAM_OK;
}
