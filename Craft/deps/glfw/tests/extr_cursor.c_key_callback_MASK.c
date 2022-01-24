#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_CURSOR ; 
 int /*<<< orphan*/  GLFW_CURSOR_DISABLED ; 
 int /*<<< orphan*/  GLFW_CURSOR_HIDDEN ; 
 int /*<<< orphan*/  GLFW_CURSOR_NORMAL ; 
#define  GLFW_KEY_0 142 
#define  GLFW_KEY_1 141 
#define  GLFW_KEY_2 140 
#define  GLFW_KEY_3 139 
#define  GLFW_KEY_4 138 
#define  GLFW_KEY_5 137 
#define  GLFW_KEY_6 136 
#define  GLFW_KEY_A 135 
#define  GLFW_KEY_D 134 
#define  GLFW_KEY_ESCAPE 133 
#define  GLFW_KEY_H 132 
#define  GLFW_KEY_N 131 
#define  GLFW_KEY_SPACE 130 
#define  GLFW_KEY_T 129 
#define  GLFW_KEY_W 128 
 int GLFW_PRESS ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int animate_cursor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/ ** standard_cursors ; 
 int swap_interval ; 
 int track_cursor ; 
 int wait_events ; 

__attribute__((used)) static void FUNC6(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case GLFW_KEY_A:
        {
            animate_cursor = !animate_cursor;
            if (!animate_cursor)
                FUNC1(window, NULL);

            break;
        }

        case GLFW_KEY_ESCAPE:
        {
            if (FUNC0(window, GLFW_CURSOR) != GLFW_CURSOR_DISABLED)
            {
                FUNC3(window, GL_TRUE);
                break;
            }

            /* FALLTHROUGH */
        }

        case GLFW_KEY_N:
            FUNC2(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
            FUNC5("(( cursor is normal ))\n");
            break;

        case GLFW_KEY_D:
            FUNC2(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
            FUNC5("(( cursor is disabled ))\n");
            break;

        case GLFW_KEY_H:
            FUNC2(window, GLFW_CURSOR, GLFW_CURSOR_HIDDEN);
            FUNC5("(( cursor is hidden ))\n");
            break;

        case GLFW_KEY_SPACE:
            swap_interval = 1 - swap_interval;
            FUNC5("(( swap interval: %i ))\n", swap_interval);
            FUNC4(swap_interval);
            break;

        case GLFW_KEY_W:
            wait_events = !wait_events;
            FUNC5("(( %sing for events ))\n", wait_events ? "wait" : "poll");
            break;

        case GLFW_KEY_T:
            track_cursor = !track_cursor;
            break;

        case GLFW_KEY_0:
            FUNC1(window, NULL);
            break;

        case GLFW_KEY_1:
            FUNC1(window, standard_cursors[0]);
            break;

        case GLFW_KEY_2:
            FUNC1(window, standard_cursors[1]);
            break;

        case GLFW_KEY_3:
            FUNC1(window, standard_cursors[2]);
            break;

        case GLFW_KEY_4:
            FUNC1(window, standard_cursors[3]);
            break;

        case GLFW_KEY_5:
            FUNC1(window, standard_cursors[4]);
            break;

        case GLFW_KEY_6:
            FUNC1(window, standard_cursors[5]);
            break;
    }
}