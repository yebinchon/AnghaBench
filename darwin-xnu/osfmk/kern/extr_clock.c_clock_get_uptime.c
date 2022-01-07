
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int mach_absolute_time () ;

void
clock_get_uptime(
 uint64_t *result)
{
 *result = mach_absolute_time();
}
