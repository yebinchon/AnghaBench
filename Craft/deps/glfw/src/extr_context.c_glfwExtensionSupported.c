
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int major; } ;
struct TYPE_5__ {scalar_t__ (* GetString ) (int ) ;scalar_t__ (* GetStringi ) (int ,int) ;int (* GetIntegerv ) (int ,int*) ;TYPE_1__ context; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLint ;


 int GLFW_INVALID_VALUE ;
 int GLFW_NO_CURRENT_CONTEXT ;
 int GLFW_PLATFORM_ERROR ;
 int GL_EXTENSIONS ;
 int GL_FALSE ;
 int GL_NUM_EXTENSIONS ;
 int GL_TRUE ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int) ;
 int _glfwInputError (int ,char*,...) ;
 int _glfwPlatformExtensionSupported (char const*) ;
 TYPE_2__* _glfwPlatformGetCurrentContext () ;
 scalar_t__ _glfwStringInExtensionString (char const*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 (int ,int*) ;
 scalar_t__ stub2 (int ,int) ;
 scalar_t__ stub3 (int ) ;

int glfwExtensionSupported(const char* extension)
{
    _GLFWwindow* window;

    _GLFW_REQUIRE_INIT_OR_RETURN(GL_FALSE);

    window = _glfwPlatformGetCurrentContext();
    if (!window)
    {
        _glfwInputError(GLFW_NO_CURRENT_CONTEXT, ((void*)0));
        return GL_FALSE;
    }

    if (*extension == '\0')
    {
        _glfwInputError(GLFW_INVALID_VALUE, ((void*)0));
        return GL_FALSE;
    }
    {


        const char* extensions = (const char*) window->GetString(GL_EXTENSIONS);
        if (!extensions)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Failed to retrieve extension string");
            return GL_FALSE;
        }

        if (_glfwStringInExtensionString(extension, extensions))
            return GL_TRUE;
    }


    return _glfwPlatformExtensionSupported(extension);
}
