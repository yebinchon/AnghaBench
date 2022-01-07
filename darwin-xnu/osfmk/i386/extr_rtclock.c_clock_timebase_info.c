
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mach_timebase_info_t ;
struct TYPE_3__ {int numer; int denom; } ;



void
clock_timebase_info(
 mach_timebase_info_t info)
{
 info->numer = info->denom = 1;
}
