
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWbool ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ _glfw_DwmIsCompositionEnabled (int *) ;

__attribute__((used)) static GLFWbool isCompositionEnabled(void)
{
    BOOL enabled;

    if (!_glfw_DwmIsCompositionEnabled)
        return FALSE;

    if (_glfw_DwmIsCompositionEnabled(&enabled) != S_OK)
        return FALSE;

    return enabled;
}
