
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_INVALID_ENUM ;
 int GLFW_JOYSTICK_LAST ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformJoystickPresent (int) ;

int glfwJoystickPresent(int joy)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(0);

    if (joy < 0 || joy > GLFW_JOYSTICK_LAST)
    {
        _glfwInputError(GLFW_INVALID_ENUM, "Invalid joystick");
        return 0;
    }

    return _glfwPlatformJoystickPresent(joy);
}
