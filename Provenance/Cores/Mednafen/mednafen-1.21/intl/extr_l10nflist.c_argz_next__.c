
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static char *
argz_next__ (char *argz, size_t argz_len, const char *entry)
{
  if (entry)
    {
      if (entry < argz + argz_len)
        entry = strchr (entry, '\0') + 1;

      return entry >= argz + argz_len ? ((void*)0) : (char *) entry;
    }
  else
    if (argz_len > 0)
      return argz;
    else
      return 0;
}
