
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int KHR_wayland_surface; } ;
struct TYPE_4__ {TYPE_1__ vk; } ;


 TYPE_2__ _glfw ;
 char** calloc (int,int) ;
 char* strdup (char*) ;

char** _glfwPlatformGetRequiredInstanceExtensions(uint32_t* count)
{
    char** extensions;

    *count = 0;

    if (!_glfw.vk.KHR_wayland_surface)
        return ((void*)0);

    extensions = calloc(2, sizeof(char*));
    extensions[0] = strdup("VK_KHR_surface");
    extensions[1] = strdup("VK_KHR_wayland_surface");

    *count = 2;
    return extensions;
}
