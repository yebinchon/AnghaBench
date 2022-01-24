#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* typing_buffer; int suppress_char; int flying; int item_index; int observe1; int player_count; int observe2; scalar_t__ typing; int /*<<< orphan*/ * players; } ;
typedef  int /*<<< orphan*/  Player ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int CRAFT_KEY_FLY ; 
 int CRAFT_KEY_ITEM_NEXT ; 
 int CRAFT_KEY_ITEM_PREV ; 
 int CRAFT_KEY_OBSERVE ; 
 int CRAFT_KEY_OBSERVE_INSET ; 
 char CRAFT_KEY_SIGN ; 
 int /*<<< orphan*/  GLFW_CURSOR ; 
 scalar_t__ GLFW_CURSOR_DISABLED ; 
 int /*<<< orphan*/  GLFW_CURSOR_NORMAL ; 
 int GLFW_KEY_BACKSPACE ; 
 int GLFW_KEY_ENTER ; 
 int GLFW_KEY_ESCAPE ; 
 int GLFW_MOD_CONTROL ; 
 int GLFW_MOD_SHIFT ; 
 int GLFW_MOD_SUPER ; 
 int GLFW_PRESS ; 
 int GLFW_RELEASE ; 
 int MAX_TEXT_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* g ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int item_count ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*,int) ; 

void FUNC11(GLFWwindow *window, int key, int scancode, int action, int mods) {
    int control = mods & (GLFW_MOD_CONTROL | GLFW_MOD_SUPER);
    int exclusive =
        FUNC2(window, GLFW_CURSOR) == GLFW_CURSOR_DISABLED;
    if (action == GLFW_RELEASE) {
        return;
    }
    if (key == GLFW_KEY_BACKSPACE) {
        if (g->typing) {
            int n = FUNC9(g->typing_buffer);
            if (n > 0) {
                g->typing_buffer[n - 1] = '\0';
            }
        }
    }
    if (action != GLFW_PRESS) {
        return;
    }
    if (key == GLFW_KEY_ESCAPE) {
        if (g->typing) {
            g->typing = 0;
        }
        else if (exclusive) {
            FUNC3(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
        }
    }
    if (key == GLFW_KEY_ENTER) {
        if (g->typing) {
            if (mods & GLFW_MOD_SHIFT) {
                int n = FUNC9(g->typing_buffer);
                if (n < MAX_TEXT_LENGTH - 1) {
                    g->typing_buffer[n] = '\r';
                    g->typing_buffer[n + 1] = '\0';
                }
            }
            else {
                g->typing = 0;
                if (g->typing_buffer[0] == CRAFT_KEY_SIGN) {
                    Player *player = g->players;
                    int x, y, z, face;
                    if (FUNC4(player, &x, &y, &z, &face)) {
                        FUNC8(x, y, z, face, g->typing_buffer + 1);
                    }
                }
                else if (g->typing_buffer[0] == '/') {
                    FUNC7(g->typing_buffer, 1);
                }
                else {
                    FUNC0(g->typing_buffer);
                }
            }
        }
        else {
            if (control) {
                FUNC6();
            }
            else {
                FUNC5();
            }
        }
    }
    if (control && key == 'V') {
        const char *buffer = FUNC1(window);
        if (g->typing) {
            g->suppress_char = 1;
            FUNC10(g->typing_buffer, buffer,
                MAX_TEXT_LENGTH - FUNC9(g->typing_buffer) - 1);
        }
        else {
            FUNC7(buffer, 0);
        }
    }
    if (!g->typing) {
        if (key == CRAFT_KEY_FLY) {
            g->flying = !g->flying;
        }
        if (key >= '1' && key <= '9') {
            g->item_index = key - '1';
        }
        if (key == '0') {
            g->item_index = 9;
        }
        if (key == CRAFT_KEY_ITEM_NEXT) {
            g->item_index = (g->item_index + 1) % item_count;
        }
        if (key == CRAFT_KEY_ITEM_PREV) {
            g->item_index--;
            if (g->item_index < 0) {
                g->item_index = item_count - 1;
            }
        }
        if (key == CRAFT_KEY_OBSERVE) {
            g->observe1 = (g->observe1 + 1) % g->player_count;
        }
        if (key == CRAFT_KEY_OBSERVE_INSET) {
            g->observe2 = (g->observe2 + 1) % g->player_count;
        }
    }
}