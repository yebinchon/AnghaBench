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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  _GLFWwindow ;
typedef  int /*<<< orphan*/  MirPointerEvent ;
typedef  int MirPointerButton ;

/* Variables and functions */
 int GLFW_MOUSE_BUTTON_4 ; 
 int GLFW_MOUSE_BUTTON_5 ; 
 int GLFW_MOUSE_BUTTON_LEFT ; 
 int GLFW_MOUSE_BUTTON_MIDDLE ; 
 int GLFW_MOUSE_BUTTON_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int const) ; 
 int FUNC1 (int) ; 
#define  mir_pointer_button_back 132 
#define  mir_pointer_button_forward 131 
#define  mir_pointer_button_primary 130 
#define  mir_pointer_button_secondary 129 
#define  mir_pointer_button_tertiary 128 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC4(_GLFWwindow* window,
                              int pressed,
                              const MirPointerEvent* pointer_event)
{
    int mods                = FUNC3(pointer_event);
    const int publicMods    = FUNC1(mods);
    MirPointerButton button = mir_pointer_button_primary;
    static uint32_t oldButtonStates = 0;
    uint32_t newButtonStates        = FUNC2(pointer_event);
    int publicButton                = GLFW_MOUSE_BUTTON_LEFT;

    // XOR our old button states our new states to figure out what was added or removed
    button = newButtonStates ^ oldButtonStates;

    switch (button)
    {
        case mir_pointer_button_primary:
            publicButton = GLFW_MOUSE_BUTTON_LEFT;
            break;
        case mir_pointer_button_secondary:
            publicButton = GLFW_MOUSE_BUTTON_RIGHT;
            break;
        case mir_pointer_button_tertiary:
            publicButton = GLFW_MOUSE_BUTTON_MIDDLE;
            break;
        case mir_pointer_button_forward:
            // FIXME What is the forward button?
            publicButton = GLFW_MOUSE_BUTTON_4;
            break;
        case mir_pointer_button_back:
            // FIXME What is the back button?
            publicButton = GLFW_MOUSE_BUTTON_5;
            break;
        default:
            break;
    }

    oldButtonStates = newButtonStates;

    FUNC0(window, publicButton, pressed, publicMods);
}