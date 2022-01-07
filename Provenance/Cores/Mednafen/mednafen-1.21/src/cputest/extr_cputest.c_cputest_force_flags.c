
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int checked ;
 int flags ;

void cputest_force_flags(int arg)
{
    flags = arg;
    checked = 1;
}
