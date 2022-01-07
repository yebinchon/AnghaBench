
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
dtrace_match_module(const char *s, const char *p, int depth)
{
#pragma unused(depth)
 size_t len;
 if (s == ((void*)0) || p == ((void*)0))
  return (0);

 len = strlen(p);

 if (strncmp(p, s, len) != 0)
  return (0);

 if (s[len] == '.' || s[len] == '\0')
  return (1);

 return (0);
}
