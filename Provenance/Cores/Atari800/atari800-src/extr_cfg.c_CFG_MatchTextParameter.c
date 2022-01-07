
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Util_stricmp (char const*,char const* const) ;

int CFG_MatchTextParameter(char const *param, char const * const cfg_strings[], int cfg_strings_size)
{
 int i;
 for (i = 0; i < cfg_strings_size; i ++) {
  if (Util_stricmp(param, cfg_strings[i]) == 0)
   return i;
 }

 return -1;
}
