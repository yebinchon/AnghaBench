
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int GLFW_CURSOR ;
 int GLFW_CURSOR_DISABLED ;
 int GLFW_CURSOR_HIDDEN ;
 int GLFW_CURSOR_NORMAL ;
 int GLFW_PRESS ;
 int GL_TRUE ;
 int animate_cursor ;
 int glfwGetInputMode (int *,int ) ;
 int glfwSetCursor (int *,int *) ;
 int glfwSetInputMode (int *,int ,int ) ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int glfwSwapInterval (int) ;
 int printf (char*,...) ;
 int ** standard_cursors ;
 int swap_interval ;
 int track_cursor ;
 int wait_events ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 135:
        {
            animate_cursor = !animate_cursor;
            if (!animate_cursor)
                glfwSetCursor(window, ((void*)0));

            break;
        }

        case 133:
        {
            if (glfwGetInputMode(window, GLFW_CURSOR) != GLFW_CURSOR_DISABLED)
            {
                glfwSetWindowShouldClose(window, GL_TRUE);
                break;
            }


        }

        case 131:
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
            printf("(( cursor is normal ))\n");
            break;

        case 134:
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
            printf("(( cursor is disabled ))\n");
            break;

        case 132:
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_HIDDEN);
            printf("(( cursor is hidden ))\n");
            break;

        case 130:
            swap_interval = 1 - swap_interval;
            printf("(( swap interval: %i ))\n", swap_interval);
            glfwSwapInterval(swap_interval);
            break;

        case 128:
            wait_events = !wait_events;
            printf("(( %sing for events ))\n", wait_events ? "wait" : "poll");
            break;

        case 129:
            track_cursor = !track_cursor;
            break;

        case 142:
            glfwSetCursor(window, ((void*)0));
            break;

        case 141:
            glfwSetCursor(window, standard_cursors[0]);
            break;

        case 140:
            glfwSetCursor(window, standard_cursors[1]);
            break;

        case 139:
            glfwSetCursor(window, standard_cursors[2]);
            break;

        case 138:
            glfwSetCursor(window, standard_cursors[3]);
            break;

        case 137:
            glfwSetCursor(window, standard_cursors[4]);
            break;

        case 136:
            glfwSetCursor(window, standard_cursors[5]);
            break;
    }
}
