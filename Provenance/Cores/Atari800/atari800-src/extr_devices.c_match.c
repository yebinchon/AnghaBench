
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int Util_chrieq (char const,char const) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int match(const char *pattern, const char *filename)
{
 if (strcmp(pattern, "*.*") == 0)
  return TRUE;

 for (;;) {
  switch (*pattern) {
  case '\0':
   return (*filename == '\0');
  case '?':
   if (*filename == '\0' || *filename == '.')
    return FALSE;
   pattern++;
   filename++;
   break;
  case '*':
   if (Util_chrieq(*filename, pattern[1]))
    pattern++;
   else if (*filename == '\0')
    return FALSE;
   else
    filename++;
   break;
  default:
   if (!Util_chrieq(*pattern, *filename))
    return FALSE;
   pattern++;
   filename++;
   break;
  }
 }
}
