#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  client; int /*<<< orphan*/  config; int /*<<< orphan*/  surface; int /*<<< orphan*/  handle; } ;
struct TYPE_22__ {int /*<<< orphan*/  destroy; int /*<<< orphan*/  getProcAddress; int /*<<< orphan*/  extensionSupported; int /*<<< orphan*/  swapInterval; int /*<<< orphan*/  swapBuffers; int /*<<< orphan*/  makeCurrent; TYPE_5__ egl; } ;
struct TYPE_23__ {TYPE_6__ context; } ;
typedef  TYPE_7__ _GLFWwindow ;
struct TYPE_24__ {scalar_t__ sRGB; } ;
typedef  TYPE_8__ _GLFWfbconfig ;
struct TYPE_25__ {scalar_t__ client; scalar_t__ profile; scalar_t__ robustness; int major; int minor; scalar_t__ debug; scalar_t__ noerror; scalar_t__ forward; TYPE_3__* share; } ;
typedef  TYPE_9__ _GLFWctxconfig ;
struct TYPE_20__ {int prefix; int /*<<< orphan*/  display; scalar_t__ KHR_gl_colorspace; scalar_t__ KHR_create_context_no_error; scalar_t__ KHR_create_context; } ;
struct TYPE_17__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_18__ {TYPE_1__ egl; } ;
struct TYPE_19__ {TYPE_2__ context; } ;
struct TYPE_16__ {TYPE_4__ egl; } ;
typedef  int /*<<< orphan*/  GLFWbool ;
typedef  int /*<<< orphan*/  EGLint ;
typedef  int /*<<< orphan*/ * EGLContext ;
typedef  int /*<<< orphan*/  EGLConfig ;

/* Variables and functions */
 int EGL_CONTEXT_CLIENT_VERSION ; 
 int EGL_CONTEXT_FLAGS_KHR ; 
 int EGL_CONTEXT_MAJOR_VERSION_KHR ; 
 int EGL_CONTEXT_MINOR_VERSION_KHR ; 
 int EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR ; 
 int EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR ; 
 int EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR ; 
 int EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR ; 
 int EGL_CONTEXT_OPENGL_NO_ERROR_KHR ; 
 int EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR ; 
 int EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR ; 
 int EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR ; 
 int EGL_GL_COLORSPACE_KHR ; 
 int EGL_GL_COLORSPACE_SRGB_KHR ; 
 int EGL_LOSE_CONTEXT_ON_RESET_KHR ; 
 int EGL_NONE ; 
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 int EGL_NO_RESET_NOTIFICATION_KHR ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
 int /*<<< orphan*/  EGL_OPENGL_API ; 
 int /*<<< orphan*/  EGL_OPENGL_ES_API ; 
 int /*<<< orphan*/  GLFW_API_UNAVAILABLE ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_FORMAT_UNAVAILABLE ; 
 scalar_t__ GLFW_LOSE_CONTEXT_ON_RESET ; 
 scalar_t__ GLFW_NO_RESET_NOTIFICATION ; 
 scalar_t__ GLFW_OPENGL_API ; 
 scalar_t__ GLFW_OPENGL_COMPAT_PROFILE ; 
 scalar_t__ GLFW_OPENGL_CORE_PROFILE ; 
 scalar_t__ GLFW_OPENGL_ES_API ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  GLFW_VERSION_UNAVAILABLE ; 
 int /*<<< orphan*/  _GLFW_EGL_NATIVE_WINDOW ; 
 TYPE_15__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__ const*,TYPE_8__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  destroyContextEGL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  extensionSupportedEGL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  getProcAddressEGL ; 
 int /*<<< orphan*/  makeContextCurrentEGL ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (char const*,char*,int) ; 
 int /*<<< orphan*/  swapBuffersEGL ; 
 int /*<<< orphan*/  swapIntervalEGL ; 

GLFWbool FUNC10(_GLFWwindow* window,
                               const _GLFWctxconfig* ctxconfig,
                               const _GLFWfbconfig* fbconfig)
{
    EGLint attribs[40];
    EGLConfig config;
    EGLContext share = NULL;

    if (!_glfw.egl.display)
    {
        FUNC0(GLFW_API_UNAVAILABLE, "EGL: API not available");
        return GLFW_FALSE;
    }

    if (ctxconfig->share)
        share = ctxconfig->share->context.egl.handle;

    if (!FUNC2(ctxconfig, fbconfig, &config))
    {
        FUNC0(GLFW_FORMAT_UNAVAILABLE,
                        "EGL: Failed to find a suitable EGLConfig");
        return GLFW_FALSE;
    }

    if (ctxconfig->client == GLFW_OPENGL_ES_API)
    {
        if (!FUNC3(EGL_OPENGL_ES_API))
        {
            FUNC0(GLFW_API_UNAVAILABLE,
                            "EGL: Failed to bind OpenGL ES: %s",
                            FUNC7(FUNC6()));
            return GLFW_FALSE;
        }
    }
    else
    {
        if (!FUNC3(EGL_OPENGL_API))
        {
            FUNC0(GLFW_API_UNAVAILABLE,
                            "EGL: Failed to bind OpenGL: %s",
                            FUNC7(FUNC6()));
            return GLFW_FALSE;
        }
    }

    if (_glfw.egl.KHR_create_context)
    {
        int index = 0, mask = 0, flags = 0;

        if (ctxconfig->client == GLFW_OPENGL_API)
        {
            if (ctxconfig->forward)
                flags |= EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR;

            if (ctxconfig->profile == GLFW_OPENGL_CORE_PROFILE)
                mask |= EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR;
            else if (ctxconfig->profile == GLFW_OPENGL_COMPAT_PROFILE)
                mask |= EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR;

            if (_glfw.egl.KHR_create_context_no_error)
            {
                if (ctxconfig->noerror)
                    flags |= EGL_CONTEXT_OPENGL_NO_ERROR_KHR;
            }
        }

        if (ctxconfig->debug)
            flags |= EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR;

        if (ctxconfig->robustness)
        {
            if (ctxconfig->robustness == GLFW_NO_RESET_NOTIFICATION)
            {
                FUNC8(EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR,
                             EGL_NO_RESET_NOTIFICATION_KHR);
            }
            else if (ctxconfig->robustness == GLFW_LOSE_CONTEXT_ON_RESET)
            {
                FUNC8(EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR,
                             EGL_LOSE_CONTEXT_ON_RESET_KHR);
            }

            flags |= EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR;
        }

        if (ctxconfig->major != 1 || ctxconfig->minor != 0)
        {
            FUNC8(EGL_CONTEXT_MAJOR_VERSION_KHR, ctxconfig->major);
            FUNC8(EGL_CONTEXT_MINOR_VERSION_KHR, ctxconfig->minor);
        }

        if (mask)
            FUNC8(EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR, mask);

        if (flags)
            FUNC8(EGL_CONTEXT_FLAGS_KHR, flags);

        FUNC8(EGL_NONE, EGL_NONE);
    }
    else
    {
        int index = 0;

        if (ctxconfig->client == GLFW_OPENGL_ES_API)
            FUNC8(EGL_CONTEXT_CLIENT_VERSION, ctxconfig->major);

        FUNC8(EGL_NONE, EGL_NONE);
    }

    // Context release behaviors (GL_KHR_context_flush_control) are not yet
    // supported on EGL but are not a hard constraint, so ignore and continue

    window->context.egl.handle = FUNC4(_glfw.egl.display,
                                                  config, share, attribs);

    if (window->context.egl.handle == EGL_NO_CONTEXT)
    {
        FUNC0(GLFW_VERSION_UNAVAILABLE,
                        "EGL: Failed to create context: %s",
                        FUNC7(FUNC6()));
        return GLFW_FALSE;
    }

    // Set up attributes for surface creation
    {
        int index = 0;

        if (fbconfig->sRGB)
        {
            if (_glfw.egl.KHR_gl_colorspace)
            {
                FUNC8(EGL_GL_COLORSPACE_KHR, EGL_GL_COLORSPACE_SRGB_KHR);
            }
        }

        FUNC8(EGL_NONE, EGL_NONE);
    }

    window->context.egl.surface =
        FUNC5(_glfw.egl.display,
                               config,
                               _GLFW_EGL_NATIVE_WINDOW,
                               attribs);
    if (window->context.egl.surface == EGL_NO_SURFACE)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "EGL: Failed to create window surface: %s",
                        FUNC7(FUNC6()));
        return GLFW_FALSE;
    }

    window->context.egl.config = config;

    // Load the appropriate client library
    {
        int i;
        const char** sonames;
        const char* es1sonames[] =
        {
#if defined(_GLFW_WIN32)
            "GLESv1_CM.dll",
            "libGLES_CM.dll",
#elif defined(_GLFW_COCOA)
            "libGLESv1_CM.dylib",
#else
            "libGLESv1_CM.so.1",
            "libGLES_CM.so.1",
#endif
            NULL
        };
        const char* es2sonames[] =
        {
#if defined(_GLFW_WIN32)
            "GLESv2.dll",
            "libGLESv2.dll",
#elif defined(_GLFW_COCOA)
            "libGLESv2.dylib",
#else
            "libGLESv2.so.2",
#endif
            NULL
        };
        const char* glsonames[] =
        {
#if defined(_GLFW_WIN32)
#elif defined(_GLFW_COCOA)
#else
            "libGL.so.1",
#endif
            NULL
        };

        if (ctxconfig->client == GLFW_OPENGL_ES_API)
        {
            if (ctxconfig->major == 1)
                sonames = es1sonames;
            else
                sonames = es2sonames;
        }
        else
            sonames = glsonames;

        for (i = 0;  sonames[i];  i++)
        {
            // HACK: Match presence of lib prefix to increase chance of finding
            //       a matching pair in the jungle that is Win32 EGL/GLES
            if (_glfw.egl.prefix != (FUNC9(sonames[i], "lib", 3) == 0))
                continue;

            window->context.egl.client = FUNC1(sonames[i]);
            if (window->context.egl.client)
                break;
        }

        if (!window->context.egl.client)
        {
            FUNC0(GLFW_API_UNAVAILABLE,
                            "EGL: Failed to load client library");
            return GLFW_FALSE;
        }
    }

    window->context.makeCurrent = makeContextCurrentEGL;
    window->context.swapBuffers = swapBuffersEGL;
    window->context.swapInterval = swapIntervalEGL;
    window->context.extensionSupported = extensionSupportedEGL;
    window->context.getProcAddress = getProcAddressEGL;
    window->context.destroy = destroyContextEGL;

    return GLFW_TRUE;
}