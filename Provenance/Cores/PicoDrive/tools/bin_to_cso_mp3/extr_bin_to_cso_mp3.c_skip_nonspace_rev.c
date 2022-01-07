
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;

char *skip_nonspace_rev(char *str)
{
  while (!isspace(*str))
    str--;

  return str;
}
