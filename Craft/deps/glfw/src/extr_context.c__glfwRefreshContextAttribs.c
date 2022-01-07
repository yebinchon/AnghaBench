
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ api; int major; int minor; int release; void* robustness; void* profile; void* debug; void* forward; int revision; } ;
struct TYPE_7__ {TYPE_1__ context; int (* GetIntegerv ) (int ,int*) ;scalar_t__ GetStringi; scalar_t__ Clear; scalar_t__ GetString; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {scalar_t__ debug; } ;
typedef TYPE_3__ _GLFWctxconfig ;
typedef scalar_t__ PFNGLGETSTRINGPROC ;
typedef scalar_t__ PFNGLGETSTRINGIPROC ;
typedef int (* PFNGLGETINTEGERVPROC ) (int ,int*) ;
typedef scalar_t__ PFNGLCLEARPROC ;
typedef int GLint ;
typedef void* GLboolean ;


 void* GLFW_LOSE_CONTEXT_ON_RESET ;
 void* GLFW_NO_RESET_NOTIFICATION ;
 scalar_t__ GLFW_OPENGL_API ;
 void* GLFW_OPENGL_COMPAT_PROFILE ;
 void* GLFW_OPENGL_CORE_PROFILE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_RELEASE_BEHAVIOR_FLUSH ;
 int GLFW_RELEASE_BEHAVIOR_NONE ;
 int GL_CONTEXT_COMPATIBILITY_PROFILE_BIT ;
 int GL_CONTEXT_CORE_PROFILE_BIT ;
 int GL_CONTEXT_FLAGS ;
 int GL_CONTEXT_FLAG_DEBUG_BIT ;
 int GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT ;
 int GL_CONTEXT_PROFILE_MASK ;
 int GL_CONTEXT_RELEASE_BEHAVIOR ;
 int GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH ;
 void* GL_FALSE ;
 int GL_LOSE_CONTEXT_ON_RESET_ARB ;
 int GL_NONE ;
 int GL_NO_RESET_NOTIFICATION_ARB ;
 int GL_RESET_NOTIFICATION_STRATEGY_ARB ;
 void* GL_TRUE ;
 int _glfwInputError (int ,char*) ;
 TYPE_2__* _glfwPlatformGetCurrentContext () ;
 scalar_t__ glfwExtensionSupported (char*) ;
 scalar_t__ glfwGetProcAddress (char*) ;
 int parseVersionString (scalar_t__*,int*,int*,int *) ;
 int stub1 (int ,int*) ;
 int stub2 (int ,int*) ;
 int stub3 (int ,int*) ;
 int stub4 (int ,int*) ;
 int stub5 (int ,int*) ;

GLboolean _glfwRefreshContextAttribs(const _GLFWctxconfig* ctxconfig)
{
    _GLFWwindow* window = _glfwPlatformGetCurrentContext();

    window->GetIntegerv = (PFNGLGETINTEGERVPROC) glfwGetProcAddress("glGetIntegerv");
    window->GetString = (PFNGLGETSTRINGPROC) glfwGetProcAddress("glGetString");
    window->Clear = (PFNGLCLEARPROC) glfwGetProcAddress("glClear");

    if (!parseVersionString(&window->context.api,
                            &window->context.major,
                            &window->context.minor,
                            &window->context.revision))
    {
        return GL_FALSE;
    }
    return GL_TRUE;
}
