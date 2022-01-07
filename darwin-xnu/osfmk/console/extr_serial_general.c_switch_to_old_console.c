
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ TRUE ;
 scalar_t__ cons_ops_index ;
 scalar_t__ nconsops ;
 int printf (char*,scalar_t__) ;

void
switch_to_old_console(int old_console)
{
 static boolean_t squawked;
 uint32_t ops = old_console;

 if ((ops >= nconsops) && !squawked) {
  squawked = TRUE;
  printf("switch_to_old_console: unknown ops %d\n", ops);
 } else
  cons_ops_index = ops;
}
