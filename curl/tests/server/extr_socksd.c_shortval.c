
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long strtoul (char*,int *,int) ;

__attribute__((used)) static unsigned short shortval(char *value)
{
  unsigned long num = strtoul(value, ((void*)0), 10);
  return num & 0xffff;
}
