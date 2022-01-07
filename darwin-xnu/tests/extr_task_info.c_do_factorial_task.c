
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
do_factorial_task()
{
 int number = 20;
 int factorial = 1;
 int i;
 for (i = 1; i <= number; i++) {
  factorial *= i;
 }

 return;
}
