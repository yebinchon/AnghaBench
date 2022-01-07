
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t cur_mode; } ;
struct TYPE_5__ {TYPE_1__ mir; int * modes; } ;
typedef TYPE_2__ _GLFWmonitor ;
typedef int GLFWvidmode ;



void _glfwPlatformGetVideoMode(_GLFWmonitor* monitor, GLFWvidmode* mode)
{
    *mode = monitor->modes[monitor->mir.cur_mode];
}
