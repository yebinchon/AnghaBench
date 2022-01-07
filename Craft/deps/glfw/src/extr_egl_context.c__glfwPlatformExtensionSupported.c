
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ egl; } ;


 int EGL_EXTENSIONS ;
 int GL_FALSE ;
 int GL_TRUE ;
 TYPE_2__ _glfw ;
 scalar_t__ _glfwStringInExtensionString (char const*,char const*) ;
 char* _glfw_eglQueryString (int ,int ) ;

int _glfwPlatformExtensionSupported(const char* extension)
{
    const char* extensions = _glfw_eglQueryString(_glfw.egl.display,
                                                  EGL_EXTENSIONS);
    if (extensions)
    {
        if (_glfwStringInExtensionString(extension, extensions))
            return GL_TRUE;
    }

    return GL_FALSE;
}
