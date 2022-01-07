
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char) ;

char *
Curl_strtok_r(char *ptr, const char *sep, char **end)
{
  if(!ptr)

    ptr = *end;


  while(*ptr && strchr(sep, *ptr))
    ++ptr;

  if(*ptr) {

    char *start = ptr;


    *end = start + 1;



    while(**end && !strchr(sep, **end))
      ++*end;

    if(**end) {

      **end = '\0';
      ++*end;
    }

    return start;
  }


  return ((void*)0);
}
