
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int SYSROM_AUTO ;
 int TRUE ;
 scalar_t__ Util_stricmp (char const*,int ) ;
 int * cfg_strings_rev ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int MatchROMVersionParameter(char const *string, int const *allowed_vals, int *version_ptr)
{
 if (strcmp(string, "AUTO") == 0) {
  *version_ptr = SYSROM_AUTO;
  return TRUE;
 }
 else do {
  if (Util_stricmp(string, cfg_strings_rev[*allowed_vals]) == 0) {
   *version_ptr = *allowed_vals;
   return TRUE;
  }
 } while (*++allowed_vals != -1);

 return FALSE;
}
