
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ resizable; scalar_t__ decorated; scalar_t__ monitor; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int DWORD ;


 int WS_CAPTION ;
 int WS_CLIPCHILDREN ;
 int WS_CLIPSIBLINGS ;
 int WS_MAXIMIZEBOX ;
 int WS_MINIMIZEBOX ;
 int WS_POPUP ;
 int WS_SYSMENU ;
 int WS_THICKFRAME ;

__attribute__((used)) static DWORD getWindowStyle(const _GLFWwindow* window)
{
    DWORD style = WS_CLIPSIBLINGS | WS_CLIPCHILDREN;

    if (window->monitor)
        style |= WS_POPUP;
    else
    {
        if (window->decorated)
        {
            style |= WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX;

            if (window->resizable)
                style |= WS_MAXIMIZEBOX | WS_THICKFRAME;
        }
        else
            style |= WS_POPUP;
    }

    return style;
}
