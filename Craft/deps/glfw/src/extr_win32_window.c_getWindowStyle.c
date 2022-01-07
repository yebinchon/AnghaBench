
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ resizable; int monitor; scalar_t__ decorated; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int DWORD ;


 int WS_CAPTION ;
 int WS_CLIPCHILDREN ;
 int WS_CLIPSIBLINGS ;
 int WS_MAXIMIZEBOX ;
 int WS_MINIMIZEBOX ;
 int WS_POPUP ;
 int WS_SIZEBOX ;
 int WS_SYSMENU ;

__attribute__((used)) static DWORD getWindowStyle(const _GLFWwindow* window)
{
    DWORD style = WS_CLIPSIBLINGS | WS_CLIPCHILDREN;

    if (window->decorated && !window->monitor)
    {
        style |= WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX;

        if (window->resizable)
            style |= WS_MAXIMIZEBOX | WS_SIZEBOX;
    }
    else
        style |= WS_POPUP;

    return style;
}
