
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int adapterName; int displayName; } ;
struct TYPE_6__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWmonitor ;
typedef int GLFWbool ;


 scalar_t__ wcscmp (int ,int ) ;
 scalar_t__ wcslen (int ) ;

GLFWbool _glfwPlatformIsSameMonitor(_GLFWmonitor* first, _GLFWmonitor* second)
{
    if (wcslen(first->win32.displayName))
        return wcscmp(first->win32.displayName, second->win32.displayName) == 0;
    else
        return wcscmp(first->win32.adapterName, second->win32.adapterName) == 0;
}
