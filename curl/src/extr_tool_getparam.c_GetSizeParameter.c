
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GlobalConfig {int dummy; } ;
typedef int curl_off_t ;
typedef int ParameterError ;


 int CURL_OFF_T_MAX ;
 int PARAM_BAD_USE ;
 int PARAM_NUMBER_TOO_LARGE ;
 int PARAM_OK ;
 scalar_t__ curlx_strtoofft (char const*,char**,int ,int*) ;
 int strlen (char*) ;
 int warnf (struct GlobalConfig*,char*,char const*) ;

__attribute__((used)) static ParameterError GetSizeParameter(struct GlobalConfig *global,
                                       const char *arg,
                                       const char *which,
                                       curl_off_t *value_out)
{
  char *unit;
  curl_off_t value;

  if(curlx_strtoofft(arg, &unit, 0, &value)) {
    warnf(global, "invalid number specified for %s\n", which);
    return PARAM_BAD_USE;
  }

  if(!*unit)
    unit = (char *)"b";
  else if(strlen(unit) > 1)
    unit = (char *)"w";

  switch(*unit) {
  case 'G':
  case 'g':
    if(value > (CURL_OFF_T_MAX / (1024*1024*1024)))
      return PARAM_NUMBER_TOO_LARGE;
    value *= 1024*1024*1024;
    break;
  case 'M':
  case 'm':
    if(value > (CURL_OFF_T_MAX / (1024*1024)))
      return PARAM_NUMBER_TOO_LARGE;
    value *= 1024*1024;
    break;
  case 'K':
  case 'k':
    if(value > (CURL_OFF_T_MAX / 1024))
      return PARAM_NUMBER_TOO_LARGE;
    value *= 1024;
    break;
  case 'b':
  case 'B':

    break;
  default:
    warnf(global, "unsupported %s unit. Use G, M, K or B!\n", which);
    return PARAM_BAD_USE;
  }
  *value_out = value;
  return PARAM_OK;
}
