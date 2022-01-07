
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int api; int major; int minor; int revision; int robustness; int forward; int debug; int profile; int release; } ;
struct TYPE_7__ {int resizable; int decorated; int floating; TYPE_1__ context; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLFWwindow ;
 int GLFW_INVALID_ENUM ;





 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformWindowFocused (TYPE_2__*) ;
 int _glfwPlatformWindowIconified (TYPE_2__*) ;
 int _glfwPlatformWindowVisible (TYPE_2__*) ;

int glfwGetWindowAttrib(GLFWwindow* handle, int attrib)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;

    _GLFW_REQUIRE_INIT_OR_RETURN(0);

    switch (attrib)
    {
        case 134:
            return _glfwPlatformWindowFocused(window);
        case 133:
            return _glfwPlatformWindowIconified(window);
        case 128:
            return _glfwPlatformWindowVisible(window);
        case 129:
            return window->resizable;
        case 136:
            return window->decorated;
        case 135:
            return window->floating;
        case 142:
            return window->context.api;
        case 138:
            return window->context.major;
        case 137:
            return window->context.minor;
        case 140:
            return window->context.revision;
        case 139:
            return window->context.robustness;
        case 131:
            return window->context.forward;
        case 132:
            return window->context.debug;
        case 130:
            return window->context.profile;
        case 141:
            return window->context.release;
    }

    _glfwInputError(GLFW_INVALID_ENUM, "Invalid window attribute");
    return 0;
}
