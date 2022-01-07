
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ParameterError ;


 scalar_t__ PARAM_NEGATIVE_NUMERIC ;
 scalar_t__ PARAM_OK ;
 scalar_t__ str2num (long*,char const*) ;

ParameterError str2unum(long *val, const char *str)
{
  ParameterError result = str2num(val, str);
  if(result != PARAM_OK)
    return result;
  if(*val < 0)
    return PARAM_NEGATIVE_NUMERIC;

  return PARAM_OK;
}
