
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _glfwPlatformGetVersionString () ;

const char* glfwGetVersionString(void)
{
    return _glfwPlatformGetVersionString();
}
