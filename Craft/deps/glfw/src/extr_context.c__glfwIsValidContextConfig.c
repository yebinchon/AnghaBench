
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ api; int major; int minor; scalar_t__ profile; scalar_t__ robustness; scalar_t__ release; scalar_t__ forward; } ;
typedef TYPE_1__ _GLFWctxconfig ;
typedef int GLboolean ;


 int GLFW_INVALID_ENUM ;
 int GLFW_INVALID_VALUE ;
 scalar_t__ GLFW_LOSE_CONTEXT_ON_RESET ;
 scalar_t__ GLFW_NO_RESET_NOTIFICATION ;
 scalar_t__ GLFW_OPENGL_API ;
 scalar_t__ GLFW_OPENGL_COMPAT_PROFILE ;
 scalar_t__ GLFW_OPENGL_CORE_PROFILE ;
 scalar_t__ GLFW_OPENGL_ES_API ;
 scalar_t__ GLFW_RELEASE_BEHAVIOR_FLUSH ;
 scalar_t__ GLFW_RELEASE_BEHAVIOR_NONE ;
 int GL_FALSE ;
 int GL_TRUE ;
 int _glfwInputError (int ,char*,...) ;

GLboolean _glfwIsValidContextConfig(const _GLFWctxconfig* ctxconfig)
{
    if (ctxconfig->api != GLFW_OPENGL_API &&
        ctxconfig->api != GLFW_OPENGL_ES_API)
    {
        _glfwInputError(GLFW_INVALID_ENUM, "Invalid client API");
        return GL_FALSE;
    }

    if (ctxconfig->api == GLFW_OPENGL_API)
    {
        if ((ctxconfig->major < 1 || ctxconfig->minor < 0) ||
            (ctxconfig->major == 1 && ctxconfig->minor > 5) ||
            (ctxconfig->major == 2 && ctxconfig->minor > 1) ||
            (ctxconfig->major == 3 && ctxconfig->minor > 3))
        {






            _glfwInputError(GLFW_INVALID_VALUE,
                            "Invalid OpenGL version %i.%i",
                            ctxconfig->major, ctxconfig->minor);
            return GL_FALSE;
        }

        if (ctxconfig->profile)
        {
            if (ctxconfig->profile != GLFW_OPENGL_CORE_PROFILE &&
                ctxconfig->profile != GLFW_OPENGL_COMPAT_PROFILE)
            {
                _glfwInputError(GLFW_INVALID_ENUM,
                                "Invalid OpenGL profile");
                return GL_FALSE;
            }

            if (ctxconfig->major < 3 ||
                (ctxconfig->major == 3 && ctxconfig->minor < 2))
            {



                _glfwInputError(GLFW_INVALID_VALUE,
                                "Context profiles are only defined for OpenGL version 3.2 and above");
                return GL_FALSE;
            }
        }

        if (ctxconfig->forward && ctxconfig->major < 3)
        {

            _glfwInputError(GLFW_INVALID_VALUE,
                            "Forward-compatibility is only defined for OpenGL version 3.0 and above");
            return GL_FALSE;
        }
    }
    else if (ctxconfig->api == GLFW_OPENGL_ES_API)
    {
        if (ctxconfig->major < 1 || ctxconfig->minor < 0 ||
            (ctxconfig->major == 1 && ctxconfig->minor > 1) ||
            (ctxconfig->major == 2 && ctxconfig->minor > 0))
        {





            _glfwInputError(GLFW_INVALID_VALUE,
                            "Invalid OpenGL ES version %i.%i",
                            ctxconfig->major, ctxconfig->minor);
            return GL_FALSE;
        }
    }

    if (ctxconfig->robustness)
    {
        if (ctxconfig->robustness != GLFW_NO_RESET_NOTIFICATION &&
            ctxconfig->robustness != GLFW_LOSE_CONTEXT_ON_RESET)
        {
            _glfwInputError(GLFW_INVALID_ENUM,
                            "Invalid context robustness mode");
            return GL_FALSE;
        }
    }

    if (ctxconfig->release)
    {
        if (ctxconfig->release != GLFW_RELEASE_BEHAVIOR_NONE &&
            ctxconfig->release != GLFW_RELEASE_BEHAVIOR_FLUSH)
        {
            _glfwInputError(GLFW_INVALID_ENUM,
                            "Invalid context release behavior");
            return GL_FALSE;
        }
    }

    return GL_TRUE;
}
