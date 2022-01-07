
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cursorMode; } ;
typedef TYPE_1__ _GLFWwindow ;





 int disableCursor (TYPE_1__*) ;
 int hideCursor (TYPE_1__*) ;
 int restoreCursor (TYPE_1__*) ;

void _glfwPlatformApplyCursorMode(_GLFWwindow* window)
{
    switch (window->cursorMode)
    {
        case 128:
            restoreCursor(window);
            break;
        case 129:
            hideCursor(window);
            break;
        case 130:
            disableCursor(window);
            break;
    }
}
