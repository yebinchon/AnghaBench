
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tls_max_array ;
typedef int ParameterError ;







 int PARAM_BAD_USE ;
 int PARAM_OK ;
 int PARAM_REQUIRES_PARAMETER ;
 int strcmp (char const*,char const*) ;

ParameterError str2tls_max(long *val, const char *str)
{
   static struct s_tls_max {
    const char *tls_max_str;
    long tls_max;
  } const tls_max_array[] = {
    { "default", 132 },
    { "1.0", 131 },
    { "1.1", 130 },
    { "1.2", 129 },
    { "1.3", 128 }
  };
  size_t i = 0;
  if(!str)
    return PARAM_REQUIRES_PARAMETER;
  for(i = 0; i < sizeof(tls_max_array)/sizeof(tls_max_array[0]); i++) {
    if(!strcmp(str, tls_max_array[i].tls_max_str)) {
      *val = tls_max_array[i].tls_max;
      return PARAM_OK;
    }
  }
  return PARAM_BAD_USE;
}
