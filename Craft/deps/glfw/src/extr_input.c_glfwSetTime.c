
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_INVALID_VALUE ;
 int _GLFW_REQUIRE_INIT () ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformSetTime (double) ;

void glfwSetTime(double time)
{
    _GLFW_REQUIRE_INIT();

    if (time != time || time < 0.0 || time > 18446744073.0)
    {
        _glfwInputError(GLFW_INVALID_VALUE, "Invalid time");
        return;
    }

    _glfwPlatformSetTime(time);
}
