
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static void fillin(const char *pattern, char *filename)
{
 const char *filename_end = filename + strlen(filename);
 for (;;) {
  switch (*pattern) {
  case '\0':
   *filename = '\0';
   return;
  case '?':
   pattern++;
   if (filename < filename_end)
    filename++;
   break;
  case '*':
   if (filename >= filename_end || *filename == pattern[1])
    pattern++;
   else
    filename++;
   break;
  default:
   *filename++ = *pattern++;
   break;
  }
 }
}
