
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_probekey_f ;


 int dtrace_match_glob ;
 int dtrace_match_nul ;
 int dtrace_match_string ;

__attribute__((used)) static dtrace_probekey_f *
dtrace_probekey_func(const char *p)
{
 char c;

 if (p == ((void*)0) || *p == '\0')
  return (&dtrace_match_nul);

 while ((c = *p++) != '\0') {
  if (c == '[' || c == '?' || c == '*' || c == '\\')
   return (&dtrace_match_glob);
 }

 return (&dtrace_match_string);
}
