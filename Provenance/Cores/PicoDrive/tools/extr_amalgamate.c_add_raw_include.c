
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* add_include (char*) ;
 int eprintf (char*,...) ;
 scalar_t__ isspace (char const) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static const char *add_raw_include(const char *include, const char *base)
{
 const char *ps, *pe;
 char processed_inc[128];

 for (ps = include; *ps && isspace(*ps); ps++);

 if (*ps == '<')
 {
  int len = 1;

  for (pe = ps; *pe && *pe != '>'; pe++, len++);
  if (*pe == 0 || len > 127) eprintf("add_raw_include: failed sysinclude, len=%i\n", len);
  strncpy(processed_inc, ps, len);
  processed_inc[len] = 0;
 }
 else if (*ps == '\"')
 {
  int len, pos;

  strcpy(processed_inc, base);
  ps++;
  while (*ps == '.')
  {
   if (strncmp(ps, "../", 3) == 0)
   {
    char *p;
    if (processed_inc[0] == 0)
     eprintf("add_raw_include: already in root, can't go down: %s | %s\n", ps, include);
    p = strrchr(processed_inc, '/');
    if (p == ((void*)0)) eprintf("add_raw_include: can't happen\n");
    *p = 0;
    p = strrchr(processed_inc, '/');
    if (p != ((void*)0)) p[1] = 0;
    else processed_inc[0] = 0;
    ps += 3;
   }
   else if (strncmp(ps, "./", 2) == 0)
   {
    ps += 2;
   }
   while (*ps == '/') ps++;
  }
  if (*ps == 0) eprintf("add_raw_include: failed with %s\n", include);

  len = pos = strlen(processed_inc);
  for (pe = ps; *pe && *pe != '\"'; pe++, len++);
  if (*pe == 0 || len > 127) eprintf("add_raw_include: failed with %s, len=%i\n", include, len);
  strncpy(processed_inc + pos, ps, len - pos);
  processed_inc[len] = 0;
 }
 else
  eprintf("add_raw_include: unhandled include: %s\n", ps);

 return add_include(processed_inc);
}
