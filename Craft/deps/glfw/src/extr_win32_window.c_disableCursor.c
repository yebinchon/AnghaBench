
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ handle; } ;
struct TYPE_6__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int POINT ;


 scalar_t__ GetCursorPos (int *) ;
 int SetCursor (int *) ;
 scalar_t__ WindowFromPoint (int ) ;
 int updateClipRect (TYPE_2__*) ;

__attribute__((used)) static void disableCursor(_GLFWwindow* window)
{
    POINT pos;

    updateClipRect(window);

    if (GetCursorPos(&pos))
    {
        if (WindowFromPoint(pos) == window->win32.handle)
            SetCursor(((void*)0));
    }
}
