
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DosScanEnv (char const*,unsigned char**) ;

char *
_nl_getenv (const char *name)
{
  unsigned char *value;
  if (DosScanEnv (name, &value))
    return ((void*)0);
  else
    return value;
}
