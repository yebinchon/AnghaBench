
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* GetString ) (int ) ;} ;
typedef TYPE_1__ _GLFWwindow ;
typedef int GLboolean ;


 int GLFW_OPENGL_API ;
 int GLFW_OPENGL_ES_API ;
 int GLFW_PLATFORM_ERROR ;
 int GL_FALSE ;
 int GL_TRUE ;
 int GL_VERSION ;
 int _glfwInputError (int ,char*) ;
 TYPE_1__* _glfwPlatformGetCurrentContext () ;
 int sscanf (char const*,char*,int*,int*,int*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t const) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static GLboolean parseVersionString(int* api, int* major, int* minor, int* rev)
{
    int i;
    _GLFWwindow* window;
    const char* version;
    const char* prefixes[] =
    {
        "OpenGL ES-CM ",
        "OpenGL ES-CL ",
        "OpenGL ES ",
        ((void*)0)
    };

    *api = GLFW_OPENGL_API;

    window = _glfwPlatformGetCurrentContext();

    version = (const char*) window->GetString(GL_VERSION);
    if (!version)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Failed to retrieve context version string");
        return GL_FALSE;
    }

    for (i = 0; prefixes[i]; i++)
    {
        const size_t length = strlen(prefixes[i]);

        if (strncmp(version, prefixes[i], length) == 0)
        {
            version += length;
            *api = GLFW_OPENGL_ES_API;
            break;
        }
    }

    if (!sscanf(version, "%d.%d.%d", major, minor, rev))
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "No version found in context version string");
        return GL_FALSE;
    }

    return GL_TRUE;
}
