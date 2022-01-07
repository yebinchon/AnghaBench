
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int _GLFWwindow ;
typedef int MirPointerEvent ;
typedef int MirPointerButton ;


 int GLFW_MOUSE_BUTTON_4 ;
 int GLFW_MOUSE_BUTTON_5 ;
 int GLFW_MOUSE_BUTTON_LEFT ;
 int GLFW_MOUSE_BUTTON_MIDDLE ;
 int GLFW_MOUSE_BUTTON_RIGHT ;
 int _glfwInputMouseClick (int *,int,int,int const) ;
 int mirModToGLFWMod (int) ;





 int mir_pointer_event_buttons (int const*) ;
 int mir_pointer_event_modifiers (int const*) ;

__attribute__((used)) static void handlePointerButton(_GLFWwindow* window,
                              int pressed,
                              const MirPointerEvent* pointer_event)
{
    int mods = mir_pointer_event_modifiers(pointer_event);
    const int publicMods = mirModToGLFWMod(mods);
    MirPointerButton button = 130;
    static uint32_t oldButtonStates = 0;
    uint32_t newButtonStates = mir_pointer_event_buttons(pointer_event);
    int publicButton = GLFW_MOUSE_BUTTON_LEFT;


    button = newButtonStates ^ oldButtonStates;

    switch (button)
    {
        case 130:
            publicButton = GLFW_MOUSE_BUTTON_LEFT;
            break;
        case 129:
            publicButton = GLFW_MOUSE_BUTTON_RIGHT;
            break;
        case 128:
            publicButton = GLFW_MOUSE_BUTTON_MIDDLE;
            break;
        case 131:

            publicButton = GLFW_MOUSE_BUTTON_4;
            break;
        case 132:

            publicButton = GLFW_MOUSE_BUTTON_5;
            break;
        default:
            break;
    }

    oldButtonStates = newButtonStates;

    _glfwInputMouseClick(window, publicButton, pressed, publicMods);
}
