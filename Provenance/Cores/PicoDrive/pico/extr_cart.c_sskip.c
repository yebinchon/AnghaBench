
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace_ (char) ;

__attribute__((used)) static char *sskip(char *s)
{
  while (*s && isspace_(*s))
    s++;
  return s;
}
