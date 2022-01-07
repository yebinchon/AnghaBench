
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int frequency; int hasPC; } ;
struct TYPE_4__ {TYPE_1__ win32_time; } ;
typedef int LARGE_INTEGER ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 scalar_t__ QueryPerformanceFrequency (int *) ;
 TYPE_2__ _glfw ;

void _glfwInitTimerWin32(void)
{
    uint64_t frequency;

    if (QueryPerformanceFrequency((LARGE_INTEGER*) &frequency))
    {
        _glfw.win32_time.hasPC = GLFW_TRUE;
        _glfw.win32_time.frequency = frequency;
    }
    else
    {
        _glfw.win32_time.hasPC = GLFW_FALSE;
        _glfw.win32_time.frequency = 1000;
    }
}
