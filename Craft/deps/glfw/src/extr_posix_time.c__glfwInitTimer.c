
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_3__ {int resolution; int base; int monotonic; } ;
struct TYPE_4__ {TYPE_1__ posix_time; } ;


 int CLOCK_MONOTONIC ;
 int GL_TRUE ;
 TYPE_2__ _glfw ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int getRawTime () ;

void _glfwInitTimer(void)
{
    {
        _glfw.posix_time.resolution = 1e-6;
    }

    _glfw.posix_time.base = getRawTime();
}
