
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

char *strdup(const char *str)
{
  size_t len;
  char *newstr;

  if(!str)
    return (char *)((void*)0);

  len = strlen(str);

  if(len >= ((size_t)-1) / sizeof(char))
    return (char *)((void*)0);

  newstr = malloc((len + 1)*sizeof(char));
  if(!newstr)
    return (char *)((void*)0);

  memcpy(newstr, str, (len + 1)*sizeof(char));

  return newstr;

}
