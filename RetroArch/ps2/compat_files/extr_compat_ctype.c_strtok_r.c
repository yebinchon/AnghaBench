
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char*,char const*) ;
 int strspn (char*,char const*) ;

char * strtok_r (char *s, const char *delim, char **save_ptr)
{
  char *end;
  if (s == ((void*)0))
    s = *save_ptr;
  if (*s == '\0')
    {
      *save_ptr = s;
      return ((void*)0);
    }

  s += strspn (s, delim);
  if (*s == '\0')
    {
      *save_ptr = s;
      return ((void*)0);
    }

  end = s + strcspn (s, delim);
  if (*end == '\0')
    {
      *save_ptr = end;
      return s;
    }

  *end = '\0';
  *save_ptr = end + 1;
  return s;
}
