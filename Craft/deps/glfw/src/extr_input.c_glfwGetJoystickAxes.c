
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_INVALID_ENUM ;
 int GLFW_JOYSTICK_LAST ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 int _glfwInputError (int ,char*) ;
 float const* _glfwPlatformGetJoystickAxes (int,int*) ;

const float* glfwGetJoystickAxes(int joy, int* count)
{
    *count = 0;

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (joy < 0 || joy > GLFW_JOYSTICK_LAST)
    {
        _glfwInputError(GLFW_INVALID_ENUM, "Invalid joystick");
        return ((void*)0);
    }

    return _glfwPlatformGetJoystickAxes(joy, count);
}
