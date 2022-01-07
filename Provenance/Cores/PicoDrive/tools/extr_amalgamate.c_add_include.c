
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int processed_inc ;


 int eprintf (char*) ;
 char const** includes ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strdup (char*) ;

__attribute__((used)) static const char *add_include(const char *include)
{
 int i;
 char processed_inc[128+4];


 snprintf(processed_inc, sizeof(processed_inc), (include[0] != '<') ? "\"%s\"" : "%s", include);


 for (i = 0; includes[i] && i < 128; i++)
 {
  if (strcmp(processed_inc, includes[i]) == 0) break;
 }
 if (i == 128) eprintf("add_include: includes overflowed\n");
 if (includes[i] != ((void*)0))
 {
  printf("already have: %s\n", processed_inc);
  return ((void*)0);
 }
 else
 {
  printf("adding: %s\n", processed_inc);
  includes[i] = strdup(processed_inc);
  if (includes[i] == ((void*)0)) eprintf("add_include: OOM\n");
  return includes[i];
 }
}
