
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {double resolution; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ posix_time; } ;


 TYPE_2__ _glfw ;
 scalar_t__ getRawTime () ;

void _glfwPlatformSetTime(double time)
{
    _glfw.posix_time.base = getRawTime() -
        (uint64_t) (time / _glfw.posix_time.resolution);
}
