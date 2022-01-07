
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ append () ;
 scalar_t__ get_parts () ;
 scalar_t__ get_url () ;
 int printf (char*) ;
 scalar_t__ scopeid () ;
 scalar_t__ set_parts () ;
 scalar_t__ set_url () ;

int test(char *URL)
{
  (void)URL;

  if(scopeid())
    return 6;

  if(append())
    return 5;

  if(set_url())
    return 1;

  if(set_parts())
    return 2;

  if(get_url())
    return 3;

  if(get_parts())
    return 4;

  printf("success\n");
  return 0;
}
