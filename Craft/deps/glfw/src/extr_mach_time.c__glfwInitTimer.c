
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {double denom; scalar_t__ numer; } ;
typedef TYPE_2__ mach_timebase_info_data_t ;
struct TYPE_5__ {double resolution; int base; } ;
struct TYPE_7__ {TYPE_1__ ns_time; } ;


 TYPE_4__ _glfw ;
 int getRawTime () ;
 int mach_timebase_info (TYPE_2__*) ;

void _glfwInitTimer(void)
{
    mach_timebase_info_data_t info;
    mach_timebase_info(&info);

    _glfw.ns_time.resolution = (double) info.numer / (info.denom * 1.0e9);
    _glfw.ns_time.base = getRawTime();
}
