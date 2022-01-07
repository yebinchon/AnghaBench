
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* (* GetExtensionsStringEXT ) () ;char* (* GetExtensionsStringARB ) (int ) ;int dc; } ;
struct TYPE_5__ {TYPE_1__ wgl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int GL_FALSE ;
 int GL_TRUE ;
 TYPE_2__* _glfwPlatformGetCurrentContext () ;
 scalar_t__ _glfwStringInExtensionString (char const*,char const*) ;
 char* stub1 () ;
 char* stub2 (int ) ;

int _glfwPlatformExtensionSupported(const char* extension)
{
    const char* extensions;

    _GLFWwindow* window = _glfwPlatformGetCurrentContext();

    if (window->wgl.GetExtensionsStringEXT != ((void*)0))
    {
        extensions = window->wgl.GetExtensionsStringEXT();
        if (extensions)
        {
            if (_glfwStringInExtensionString(extension, extensions))
                return GL_TRUE;
        }
    }

    if (window->wgl.GetExtensionsStringARB != ((void*)0))
    {
        extensions = window->wgl.GetExtensionsStringARB(window->wgl.dc);
        if (extensions)
        {
            if (_glfwStringInExtensionString(extension, extensions))
                return GL_TRUE;
        }
    }

    return GL_FALSE;
}
