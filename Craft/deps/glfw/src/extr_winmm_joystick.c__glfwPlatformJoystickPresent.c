
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JOYINFO ;


 int GL_FALSE ;
 int GL_TRUE ;
 scalar_t__ JOYERR_NOERROR ;
 scalar_t__ _glfw_joyGetPos (int,int *) ;

int _glfwPlatformJoystickPresent(int joy)
{
    JOYINFO ji;

    if (_glfw_joyGetPos(joy, &ji) != JOYERR_NOERROR)
        return GL_FALSE;

    return GL_TRUE;
}
