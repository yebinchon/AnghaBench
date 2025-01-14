
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 char** calloc (size_t,int) ;
 char* strchr (char*,char) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static bool split_str(char *str, char ***out, size_t *count)
{
  char **res;
  char *lasts;
  char *s;
  size_t i;
  size_t items = 1;

  s = strchr(str, ',');
  while(s) {
    items++;
    s = strchr(++s, ',');
  }

  res = calloc(items, sizeof(char *));
  if(!res)
    return FALSE;

  for(i = 0, s = strtok_r(str, ",", &lasts); s && i < items;
      s = strtok_r(((void*)0), ",", &lasts), i++)
    res[i] = s;

  *out = res;
  *count = items;

  return TRUE;
}
