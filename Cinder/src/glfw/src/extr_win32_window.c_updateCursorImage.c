
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cursorMode; TYPE_2__* cursor; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_5__ {int * handle; } ;
struct TYPE_6__ {TYPE_1__ win32; } ;


 scalar_t__ GLFW_CURSOR_NORMAL ;
 int IDC_ARROW ;
 int * LoadCursorW (int *,int ) ;
 int SetCursor (int *) ;

__attribute__((used)) static void updateCursorImage(_GLFWwindow* window)
{
    if (window->cursorMode == GLFW_CURSOR_NORMAL)
    {
        if (window->cursor)
            SetCursor(window->cursor->win32.handle);
        else
            SetCursor(LoadCursorW(((void*)0), IDC_ARROW));
    }
    else
        SetCursor(((void*)0));
}
