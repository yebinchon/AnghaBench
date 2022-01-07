
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* (* GetExtensionsStringEXT ) () ;char* (* GetExtensionsStringARB ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ wgl; } ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 TYPE_2__ _glfw ;
 scalar_t__ _glfwStringInExtensionString (char const*,char const*) ;
 char* stub1 () ;
 char* stub2 (int ) ;
 int wglGetCurrentDC () ;

__attribute__((used)) static int extensionSupportedWGL(const char* extension)
{
    const char* extensions;

    if (_glfw.wgl.GetExtensionsStringEXT)
    {
        extensions = _glfw.wgl.GetExtensionsStringEXT();
        if (extensions)
        {
            if (_glfwStringInExtensionString(extension, extensions))
                return GLFW_TRUE;
        }
    }

    if (_glfw.wgl.GetExtensionsStringARB)
    {
        extensions = _glfw.wgl.GetExtensionsStringARB(wglGetCurrentDC());
        if (extensions)
        {
            if (_glfwStringInExtensionString(extension, extensions))
                return GLFW_TRUE;
        }
    }

    return GLFW_FALSE;
}
