
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_19__ {int client; int config; int context; int visual; } ;
struct TYPE_20__ {TYPE_5__ egl; } ;
typedef TYPE_6__ _GLFWwindow ;
typedef int _GLFWfbconfig ;
struct TYPE_21__ {scalar_t__ api; scalar_t__ profile; scalar_t__ robustness; int major; int minor; scalar_t__ debug; scalar_t__ forward; TYPE_2__* share; } ;
typedef TYPE_7__ _GLFWctxconfig ;
struct TYPE_22__ {void* depth; void* visualid; int screen; } ;
typedef TYPE_8__ XVisualInfo ;
struct TYPE_18__ {int display; scalar_t__ KHR_create_context; } ;
struct TYPE_17__ {int display; int screen; } ;
struct TYPE_15__ {int * context; } ;
struct TYPE_16__ {TYPE_1__ egl; } ;
struct TYPE_14__ {TYPE_4__ egl; TYPE_3__ x11; } ;
typedef void* EGLint ;
typedef int * EGLContext ;
typedef int EGLConfig ;


 int EGL_ALPHA_SIZE ;
 int EGL_BLUE_SIZE ;
 int EGL_CONTEXT_CLIENT_VERSION ;
 int EGL_CONTEXT_FLAGS_KHR ;
 int EGL_CONTEXT_MAJOR_VERSION_KHR ;
 int EGL_CONTEXT_MINOR_VERSION_KHR ;
 int EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR ;
 int EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR ;
 int EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR ;
 int EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR ;
 int EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR ;
 int EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR ;
 int EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR ;
 int EGL_GREEN_SIZE ;
 int EGL_LOSE_CONTEXT_ON_RESET_KHR ;
 int EGL_NATIVE_VISUAL_ID ;
 int EGL_NONE ;
 int EGL_NO_CONTEXT ;
 int EGL_NO_RESET_NOTIFICATION_KHR ;
 int EGL_OPENGL_API ;
 int EGL_OPENGL_ES_API ;
 int EGL_RED_SIZE ;
 int GLFW_API_UNAVAILABLE ;
 int GLFW_FORMAT_UNAVAILABLE ;
 scalar_t__ GLFW_LOSE_CONTEXT_ON_RESET ;
 scalar_t__ GLFW_NO_RESET_NOTIFICATION ;
 scalar_t__ GLFW_OPENGL_API ;
 scalar_t__ GLFW_OPENGL_COMPAT_PROFILE ;
 scalar_t__ GLFW_OPENGL_CORE_PROFILE ;
 scalar_t__ GLFW_OPENGL_ES_API ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_VERSION_UNAVAILABLE ;
 int GL_FALSE ;
 int GL_TRUE ;
 int VisualDepthMask ;
 int VisualIDMask ;
 int VisualScreenMask ;
 int XGetVisualInfo (int ,int,TYPE_8__*,void**) ;
 TYPE_12__ _glfw ;
 int _glfwInputError (int ,char*,...) ;
 int _glfw_dlopen (char const*) ;
 int _glfw_eglBindAPI (int ) ;
 int _glfw_eglCreateContext (int ,int ,int *,int*) ;
 int _glfw_eglGetConfigAttrib (int ,int ,int ,void**) ;
 int _glfw_eglGetError () ;
 int chooseFBConfigs (TYPE_7__ const*,int const*,int *) ;
 int getErrorString (int ) ;
 int setEGLattrib (int,int) ;

int _glfwCreateContext(_GLFWwindow* window,
                       const _GLFWctxconfig* ctxconfig,
                       const _GLFWfbconfig* fbconfig)
{
    int attribs[40];
    EGLConfig config;
    EGLContext share = ((void*)0);

    if (ctxconfig->share)
        share = ctxconfig->share->egl.context;

    if (!chooseFBConfigs(ctxconfig, fbconfig, &config))
    {
        _glfwInputError(GLFW_FORMAT_UNAVAILABLE,
                        "EGL: Failed to find a suitable EGLConfig");
        return GL_FALSE;
    }
    if (ctxconfig->api == GLFW_OPENGL_ES_API)
    {
        if (!_glfw_eglBindAPI(EGL_OPENGL_ES_API))
        {
            _glfwInputError(GLFW_API_UNAVAILABLE,
                            "EGL: Failed to bind OpenGL ES: %s",
                            getErrorString(_glfw_eglGetError()));
            return GL_FALSE;
        }
    }
    else
    {
        if (!_glfw_eglBindAPI(EGL_OPENGL_API))
        {
            _glfwInputError(GLFW_API_UNAVAILABLE,
                            "EGL: Failed to bind OpenGL: %s",
                            getErrorString(_glfw_eglGetError()));
            return GL_FALSE;
        }
    }

    if (_glfw.egl.KHR_create_context)
    {
        int index = 0, mask = 0, flags = 0;

        if (ctxconfig->api == GLFW_OPENGL_API)
        {
            if (ctxconfig->forward)
                flags |= EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR;

            if (ctxconfig->profile == GLFW_OPENGL_CORE_PROFILE)
                mask |= EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR;
            else if (ctxconfig->profile == GLFW_OPENGL_COMPAT_PROFILE)
                mask |= EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR;
        }

        if (ctxconfig->debug)
            flags |= EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR;

        if (ctxconfig->robustness)
        {
            if (ctxconfig->robustness == GLFW_NO_RESET_NOTIFICATION)
            {
                setEGLattrib(EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR,
                             EGL_NO_RESET_NOTIFICATION_KHR);
            }
            else if (ctxconfig->robustness == GLFW_LOSE_CONTEXT_ON_RESET)
            {
                setEGLattrib(EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR,
                             EGL_LOSE_CONTEXT_ON_RESET_KHR);
            }

            flags |= EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR;
        }

        if (ctxconfig->major != 1 || ctxconfig->minor != 0)
        {
            setEGLattrib(EGL_CONTEXT_MAJOR_VERSION_KHR, ctxconfig->major);
            setEGLattrib(EGL_CONTEXT_MINOR_VERSION_KHR, ctxconfig->minor);
        }

        if (mask)
            setEGLattrib(EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR, mask);

        if (flags)
            setEGLattrib(EGL_CONTEXT_FLAGS_KHR, flags);

        setEGLattrib(EGL_NONE, EGL_NONE);
    }
    else
    {
        int index = 0;

        if (ctxconfig->api == GLFW_OPENGL_ES_API)
            setEGLattrib(EGL_CONTEXT_CLIENT_VERSION, ctxconfig->major);

        setEGLattrib(EGL_NONE, EGL_NONE);
    }




    window->egl.context = _glfw_eglCreateContext(_glfw.egl.display,
                                                 config, share, attribs);

    if (window->egl.context == EGL_NO_CONTEXT)
    {
        _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                        "EGL: Failed to create context: %s",
                        getErrorString(_glfw_eglGetError()));
        return GL_FALSE;
    }

    window->egl.config = config;


    {
        int i;
        const char** sonames;
        const char* es1sonames[] =
        {






            "libGLESv1_CM.so.1",
            "libGLES_CM.so.1",

            ((void*)0)
        };
        const char* es2sonames[] =
        {






            "libGLESv2.so.2",

            ((void*)0)
        };
        const char* glsonames[] =
        {



            "libGL.so.1",

            ((void*)0)
        };

        if (ctxconfig->api == GLFW_OPENGL_ES_API)
        {
            if (ctxconfig->major == 1)
                sonames = es1sonames;
            else
                sonames = es2sonames;
        }
        else
            sonames = glsonames;

        for (i = 0; sonames[i]; i++)
        {
            window->egl.client = _glfw_dlopen(sonames[i]);
            if (window->egl.client)
                break;
        }

        if (!window->egl.client)
        {
            _glfwInputError(GLFW_API_UNAVAILABLE,
                            "EGL: Failed to load client library");
            return GL_FALSE;
        }
    }

    return GL_TRUE;
}
