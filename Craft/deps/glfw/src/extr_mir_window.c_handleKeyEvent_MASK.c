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
typedef  int /*<<< orphan*/  _GLFWwindow ;
typedef  int /*<<< orphan*/  MirKeyboardEvent ;

/* Variables and functions */
 int const GLFW_MOD_ALT ; 
 int const GLFW_MOD_CONTROL ; 
 int GLFW_PRESS ; 
 int GLFW_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long const,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int const,int const) ; 
 long FUNC2 (int const) ; 
 int FUNC3 (int const) ; 
 int const mir_keyboard_action_up ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int const) ; 

__attribute__((used)) static void FUNC9(const MirKeyboardEvent* key_event, _GLFWwindow* window)
{
    const int action    = FUNC4   (key_event);
    const int scan_code = FUNC7(key_event);
    const int key_code  = FUNC5 (key_event);
    const int modifiers = FUNC6(key_event);

    const int  pressed = action == mir_keyboard_action_up ? GLFW_RELEASE : GLFW_PRESS;
    const int  mods    = FUNC3(modifiers);
    const long text    = FUNC2(key_code);
    const int  plain   = !(mods & (GLFW_MOD_CONTROL | GLFW_MOD_ALT));

    FUNC1(window, FUNC8(scan_code), scan_code, pressed, mods);

    if (text != -1)
        FUNC0(window, text, mods, plain);
}