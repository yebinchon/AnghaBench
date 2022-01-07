
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double resolution; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ ns_time; } ;


 TYPE_2__ _glfw ;
 scalar_t__ getRawTime () ;

double _glfwPlatformGetTime(void)
{
    return (double) (getRawTime() - _glfw.ns_time.base) *
        _glfw.ns_time.resolution;
}
