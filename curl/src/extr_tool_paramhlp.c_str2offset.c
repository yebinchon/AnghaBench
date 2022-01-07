
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_off_t ;
typedef int ParameterError ;
typedef scalar_t__ CURLofft ;


 scalar_t__ CURL_OFFT_FLOW ;
 scalar_t__ CURL_OFFT_INVAL ;
 scalar_t__ ERANGE ;
 int LONG_MAX ;
 int LONG_MIN ;
 int PARAM_BAD_NUMERIC ;
 int PARAM_NEGATIVE_NUMERIC ;
 int PARAM_NUMBER_TOO_LARGE ;
 int PARAM_OK ;
 scalar_t__ curlx_strtoofft (char const*,char**,int ,int *) ;
 scalar_t__ errno ;
 int strlen (char const*) ;
 int strtol (char const*,char**,int ) ;

ParameterError str2offset(curl_off_t *val, const char *str)
{
  char *endptr;
  if(str[0] == '-')

    return PARAM_NEGATIVE_NUMERIC;
  errno = 0;
  *val = strtol(str, &endptr, 0);
  if((*val == LONG_MIN || *val == LONG_MAX) && errno == ERANGE)
    return PARAM_NUMBER_TOO_LARGE;

  if((endptr != str) && (endptr == str + strlen(str)))
    return PARAM_OK;

  return PARAM_BAD_NUMERIC;
}
