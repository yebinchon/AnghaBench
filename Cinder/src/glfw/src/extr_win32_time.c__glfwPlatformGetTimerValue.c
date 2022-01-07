
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ hasPC; } ;
struct TYPE_4__ {TYPE_1__ win32_time; } ;
typedef int LARGE_INTEGER ;


 int QueryPerformanceCounter (int *) ;
 TYPE_2__ _glfw ;
 int _glfw_timeGetTime () ;

uint64_t _glfwPlatformGetTimerValue(void)
{
    if (_glfw.win32_time.hasPC)
    {
        uint64_t value;
        QueryPerformanceCounter((LARGE_INTEGER*) &value);
        return value;
    }
    else
        return (uint64_t) _glfw_timeGetTime();
}
