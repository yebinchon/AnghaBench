
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int frequency; } ;
struct TYPE_4__ {TYPE_1__ ns_time; } ;


 TYPE_2__ _glfw ;

uint64_t _glfwPlatformGetTimerFrequency(void)
{
    return _glfw.ns_time.frequency;
}
