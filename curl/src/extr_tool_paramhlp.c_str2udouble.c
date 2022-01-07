
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ParameterError ;


 scalar_t__ PARAM_NEGATIVE_NUMERIC ;
 scalar_t__ PARAM_OK ;
 scalar_t__ str2double (double*,char const*,long) ;

ParameterError str2udouble(double *valp, const char *str, long max)
{
  double value;
  ParameterError result = str2double(&value, str, max);
  if(result != PARAM_OK)
    return result;
  if(value < 0)
    return PARAM_NEGATIVE_NUMERIC;

  *valp = value;
  return PARAM_OK;
}
