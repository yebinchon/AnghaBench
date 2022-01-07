
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
_nl_find_language (const char *name)
{
  while (name[0] != '\0' && name[0] != '_' && name[0] != '@' && name[0] != '.')
    ++name;

  return (char *) name;
}
