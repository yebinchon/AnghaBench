
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; } ;
struct TYPE_5__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int POINT ;


 int ClipCursor (int *) ;
 scalar_t__ GetCursorPos (int *) ;
 int SetCursor (int *) ;
 scalar_t__ WindowFromPoint (int ) ;

__attribute__((used)) static void hideCursor(_GLFWwindow* window)
{
    POINT pos;

    ClipCursor(((void*)0));

    if (GetCursorPos(&pos))
    {
        if (WindowFromPoint(pos) == window->win32.handle)
            SetCursor(((void*)0));
    }
}
