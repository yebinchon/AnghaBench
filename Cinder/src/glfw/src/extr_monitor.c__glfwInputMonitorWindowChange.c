
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int _GLFWwindow ;
struct TYPE_3__ {int * window; } ;
typedef TYPE_1__ _GLFWmonitor ;



void _glfwInputMonitorWindowChange(_GLFWmonitor* monitor, _GLFWwindow* window)
{
    monitor->window = window;
}
