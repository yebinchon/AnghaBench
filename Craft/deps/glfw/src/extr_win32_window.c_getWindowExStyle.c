
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int monitor; scalar_t__ decorated; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int DWORD ;


 int WS_EX_APPWINDOW ;
 int WS_EX_WINDOWEDGE ;

__attribute__((used)) static DWORD getWindowExStyle(const _GLFWwindow* window)
{
    DWORD style = WS_EX_APPWINDOW;

    if (window->decorated && !window->monitor)
        style |= WS_EX_WINDOWEDGE;

    return style;
}
