
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_3__ {int frequency; int monotonic; } ;
struct TYPE_4__ {TYPE_1__ posix_time; } ;


 int CLOCK_MONOTONIC ;
 int GLFW_FALSE ;
 int GLFW_TRUE ;
 TYPE_2__ _glfw ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;

void _glfwInitTimerPOSIX(void)
{
    {
        _glfw.posix_time.monotonic = GLFW_FALSE;
        _glfw.posix_time.frequency = 1000000;
    }
}
