
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handleEvents (int ) ;

void _glfwPlatformPollEvents(void)
{
    handleEvents(0);
}
