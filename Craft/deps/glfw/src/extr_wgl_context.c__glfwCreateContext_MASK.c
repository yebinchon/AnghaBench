#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pfd ;
struct TYPE_15__ {scalar_t__ context; int /*<<< orphan*/  dc; scalar_t__ (* CreateContextAttribsARB ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ;scalar_t__ ARB_context_flush_control; scalar_t__ ARB_create_context_robustness; scalar_t__ ARB_create_context; } ;
struct TYPE_14__ {int /*<<< orphan*/  handle; } ;
struct TYPE_16__ {TYPE_4__ wgl; TYPE_3__ win32; } ;
typedef  TYPE_5__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWfbconfig ;
struct TYPE_17__ {scalar_t__ api; scalar_t__ profile; scalar_t__ robustness; scalar_t__ release; int major; int minor; scalar_t__ debug; scalar_t__ forward; TYPE_2__* share; } ;
typedef  TYPE_6__ _GLFWctxconfig ;
struct TYPE_12__ {int /*<<< orphan*/ * context; } ;
struct TYPE_13__ {TYPE_1__ wgl; } ;
typedef  int /*<<< orphan*/  PIXELFORMATDESCRIPTOR ;
typedef  int /*<<< orphan*/ * HGLRC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ GLFW_LOSE_CONTEXT_ON_RESET ; 
 scalar_t__ GLFW_NO_RESET_NOTIFICATION ; 
 scalar_t__ GLFW_OPENGL_API ; 
 scalar_t__ GLFW_OPENGL_COMPAT_PROFILE ; 
 scalar_t__ GLFW_OPENGL_CORE_PROFILE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 scalar_t__ GLFW_RELEASE_BEHAVIOR_FLUSH ; 
 scalar_t__ GLFW_RELEASE_BEHAVIOR_NONE ; 
 int /*<<< orphan*/  GLFW_VERSION_UNAVAILABLE ; 
 int GL_FALSE ; 
 int GL_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB ; 
 int WGL_CONTEXT_CORE_PROFILE_BIT_ARB ; 
 int WGL_CONTEXT_DEBUG_BIT_ARB ; 
 int WGL_CONTEXT_ES2_PROFILE_BIT_EXT ; 
 int /*<<< orphan*/  WGL_CONTEXT_FLAGS_ARB ; 
 int WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB ; 
 int /*<<< orphan*/  WGL_CONTEXT_MAJOR_VERSION_ARB ; 
 int /*<<< orphan*/  WGL_CONTEXT_MINOR_VERSION_ARB ; 
 int /*<<< orphan*/  WGL_CONTEXT_PROFILE_MASK_ARB ; 
 int /*<<< orphan*/  WGL_CONTEXT_RELEASE_BEHAVIOR_ARB ; 
 int WGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB ; 
 int WGL_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB ; 
 int /*<<< orphan*/  WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB ; 
 int WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB ; 
 int WGL_LOSE_CONTEXT_ON_RESET_ARB ; 
 int WGL_NO_RESET_NOTIFICATION_ARB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/  const*,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

int FUNC11(_GLFWwindow* window,
                       const _GLFWctxconfig* ctxconfig,
                       const _GLFWfbconfig* fbconfig)
{
    int attribs[40];
    int pixelFormat = 0;
    PIXELFORMATDESCRIPTOR pfd;
    HGLRC share = NULL;

    if (ctxconfig->share)
        share = ctxconfig->share->wgl.context;

    window->wgl.dc = FUNC1(window->win32.handle);
    if (!window->wgl.dc)
    {
        FUNC3(GLFW_PLATFORM_ERROR,
                        "WGL: Failed to retrieve DC for window");
        return GL_FALSE;
    }

    if (!FUNC7(window, fbconfig, &pixelFormat))
        return GL_FALSE;

    if (!FUNC0(window->wgl.dc, pixelFormat, sizeof(pfd), &pfd))
    {
        FUNC3(GLFW_PLATFORM_ERROR,
                        "WGL: Failed to retrieve PFD for selected pixel format");
        return GL_FALSE;
    }

    if (!FUNC2(window->wgl.dc, pixelFormat, &pfd))
    {
        FUNC3(GLFW_PLATFORM_ERROR,
                        "WGL: Failed to set selected pixel format");
        return GL_FALSE;
    }

    if (window->wgl.ARB_create_context)
    {
        int index = 0, mask = 0, flags = 0;

        if (ctxconfig->api == GLFW_OPENGL_API)
        {
            if (ctxconfig->forward)
                flags |= WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB;

            if (ctxconfig->profile == GLFW_OPENGL_CORE_PROFILE)
                mask |= WGL_CONTEXT_CORE_PROFILE_BIT_ARB;
            else if (ctxconfig->profile == GLFW_OPENGL_COMPAT_PROFILE)
                mask |= WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB;
        }
        else
            mask |= WGL_CONTEXT_ES2_PROFILE_BIT_EXT;

        if (ctxconfig->debug)
            flags |= WGL_CONTEXT_DEBUG_BIT_ARB;

        if (ctxconfig->robustness)
        {
            if (window->wgl.ARB_create_context_robustness)
            {
                if (ctxconfig->robustness == GLFW_NO_RESET_NOTIFICATION)
                {
                    FUNC9(WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB,
                                 WGL_NO_RESET_NOTIFICATION_ARB);
                }
                else if (ctxconfig->robustness == GLFW_LOSE_CONTEXT_ON_RESET)
                {
                    FUNC9(WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB,
                                 WGL_LOSE_CONTEXT_ON_RESET_ARB);
                }

                flags |= WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB;
            }
        }

        if (ctxconfig->release)
        {
            if (window->wgl.ARB_context_flush_control)
            {
                if (ctxconfig->release == GLFW_RELEASE_BEHAVIOR_NONE)
                {
                    FUNC9(WGL_CONTEXT_RELEASE_BEHAVIOR_ARB,
                                 WGL_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB);
                }
                else if (ctxconfig->release == GLFW_RELEASE_BEHAVIOR_FLUSH)
                {
                    FUNC9(WGL_CONTEXT_RELEASE_BEHAVIOR_ARB,
                                 WGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB);
                }
            }
        }

        // NOTE: Only request an explicitly versioned context when necessary, as
        //       explicitly requesting version 1.0 does not always return the
        //       highest version supported by the driver
        if (ctxconfig->major != 1 || ctxconfig->minor != 0)
        {
            FUNC9(WGL_CONTEXT_MAJOR_VERSION_ARB, ctxconfig->major);
            FUNC9(WGL_CONTEXT_MINOR_VERSION_ARB, ctxconfig->minor);
        }

        if (flags)
            FUNC9(WGL_CONTEXT_FLAGS_ARB, flags);

        if (mask)
            FUNC9(WGL_CONTEXT_PROFILE_MASK_ARB, mask);

        FUNC9(0, 0);

        window->wgl.context = window->wgl.CreateContextAttribsARB(window->wgl.dc,
                                                                  share,
                                                                  attribs);
        if (!window->wgl.context)
        {
            FUNC3(GLFW_VERSION_UNAVAILABLE,
                            "WGL: Failed to create OpenGL context");
            return GL_FALSE;
        }
    }
    else
    {
        window->wgl.context = FUNC5(window->wgl.dc);
        if (!window->wgl.context)
        {
            FUNC3(GLFW_VERSION_UNAVAILABLE,
                            "WGL: Failed to create OpenGL context");
            return GL_FALSE;
        }

        if (share)
        {
            if (!FUNC6(share, window->wgl.context))
            {
                FUNC3(GLFW_PLATFORM_ERROR,
                                "WGL: Failed to enable sharing with specified OpenGL context");
                return GL_FALSE;
            }
        }
    }

    FUNC4(window);
    FUNC8(window);

    return GL_TRUE;
}