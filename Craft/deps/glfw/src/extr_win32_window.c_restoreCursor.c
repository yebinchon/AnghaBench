
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ handle; } ;
struct TYPE_9__ {TYPE_3__* cursor; TYPE_1__ win32; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_7__ {int handle; } ;
struct TYPE_8__ {TYPE_2__ win32; } ;
typedef int POINT ;


 int ClipCursor (int *) ;
 scalar_t__ GetCursorPos (int *) ;
 int IDC_ARROW ;
 int LoadCursorW (int *,int ) ;
 int SetCursor (int ) ;
 scalar_t__ WindowFromPoint (int ) ;

__attribute__((used)) static void restoreCursor(_GLFWwindow* window)
{
    POINT pos;

    ClipCursor(((void*)0));

    if (GetCursorPos(&pos))
    {
        if (WindowFromPoint(pos) == window->win32.handle)
        {
            if (window->cursor)
                SetCursor(window->cursor->win32.handle);
            else
                SetCursor(LoadCursorW(((void*)0), IDC_ARROW));
        }
    }
}
