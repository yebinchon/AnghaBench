#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int major; int minor; int EXT_swap_control; int SGI_swap_control; int MESA_swap_control; int ARB_multisample; int ARB_framebuffer_sRGB; int EXT_framebuffer_sRGB; int ARB_create_context; int ARB_create_context_robustness; int ARB_create_context_profile; int EXT_create_context_es2_profile; int ARB_context_flush_control; scalar_t__ CreateContextAttribsARB; scalar_t__ SwapIntervalMESA; scalar_t__ SwapIntervalSGI; scalar_t__ SwapIntervalEXT; int /*<<< orphan*/  eventBase; int /*<<< orphan*/  errorBase; int /*<<< orphan*/  handle; void* GetProcAddressARB; void* GetProcAddress; void* GetVisualFromFBConfig; void* CreateNewContext; void* QueryExtensionsString; void* SwapBuffers; void* MakeCurrent; void* DestroyContext; void* QueryVersion; void* QueryExtension; void* GetClientString; void* GetFBConfigAttrib; void* GetFBConfigs; } ;
struct TYPE_4__ {int /*<<< orphan*/  display; } ;
struct TYPE_6__ {TYPE_2__ glx; TYPE_1__ x11; } ;
typedef  scalar_t__ PFNGLXSWAPINTERVALSGIPROC ;
typedef  scalar_t__ PFNGLXSWAPINTERVALMESAPROC ;
typedef  scalar_t__ PFNGLXSWAPINTERVALEXTPROC ;
typedef  scalar_t__ PFNGLXCREATECONTEXTATTRIBSARBPROC ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_API_UNAVAILABLE ; 
 int GL_FALSE ; 
 int GL_TRUE ; 
 int RTLD_GLOBAL ; 
 int RTLD_LAZY ; 
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,char*) ; 

int FUNC9(void)
{
#if defined(__CYGWIN__)
    const char* soname = "libGL-1.so";
#else
    const char* soname = "libGL.so.1";
#endif

    if (!FUNC0())
        return GL_FALSE;

    _glfw.glx.handle = FUNC7(soname, RTLD_LAZY | RTLD_GLOBAL);
    if (!_glfw.glx.handle)
    {
        FUNC1(GLFW_API_UNAVAILABLE, "GLX: %s", FUNC6());
        return GL_FALSE;
    }

    _glfw.glx.GetFBConfigs =
        FUNC8(_glfw.glx.handle, "glXGetFBConfigs");
    _glfw.glx.GetFBConfigAttrib =
        FUNC8(_glfw.glx.handle, "glXGetFBConfigAttrib");
    _glfw.glx.GetClientString =
        FUNC8(_glfw.glx.handle, "glXGetClientString");
    _glfw.glx.QueryExtension =
        FUNC8(_glfw.glx.handle, "glXQueryExtension");
    _glfw.glx.QueryVersion =
        FUNC8(_glfw.glx.handle, "glXQueryVersion");
    _glfw.glx.DestroyContext =
        FUNC8(_glfw.glx.handle, "glXDestroyContext");
    _glfw.glx.MakeCurrent =
        FUNC8(_glfw.glx.handle, "glXMakeCurrent");
    _glfw.glx.SwapBuffers =
        FUNC8(_glfw.glx.handle, "glXSwapBuffers");
    _glfw.glx.QueryExtensionsString =
        FUNC8(_glfw.glx.handle, "glXQueryExtensionsString");
    _glfw.glx.CreateNewContext =
        FUNC8(_glfw.glx.handle, "glXCreateNewContext");
    _glfw.glx.GetVisualFromFBConfig =
        FUNC8(_glfw.glx.handle, "glXGetVisualFromFBConfig");
    _glfw.glx.GetProcAddress =
        FUNC8(_glfw.glx.handle, "glXGetProcAddress");
    _glfw.glx.GetProcAddressARB =
        FUNC8(_glfw.glx.handle, "glXGetProcAddressARB");

    if (!FUNC4(_glfw.x11.display,
                                 &_glfw.glx.errorBase,
                                 &_glfw.glx.eventBase))
    {
        FUNC1(GLFW_API_UNAVAILABLE, "GLX: GLX extension not found");
        return GL_FALSE;
    }

    if (!FUNC5(_glfw.x11.display,
                               &_glfw.glx.major,
                               &_glfw.glx.minor))
    {
        FUNC1(GLFW_API_UNAVAILABLE,
                        "GLX: Failed to query GLX version");
        return GL_FALSE;
    }

    if (_glfw.glx.major == 1 && _glfw.glx.minor < 3)
    {
        FUNC1(GLFW_API_UNAVAILABLE,
                        "GLX: GLX version 1.3 is required");
        return GL_FALSE;
    }

    if (FUNC2("GLX_EXT_swap_control"))
    {
        _glfw.glx.SwapIntervalEXT = (PFNGLXSWAPINTERVALEXTPROC)
            FUNC3("glXSwapIntervalEXT");

        if (_glfw.glx.SwapIntervalEXT)
            _glfw.glx.EXT_swap_control = GL_TRUE;
    }

    if (FUNC2("GLX_SGI_swap_control"))
    {
        _glfw.glx.SwapIntervalSGI = (PFNGLXSWAPINTERVALSGIPROC)
            FUNC3("glXSwapIntervalSGI");

        if (_glfw.glx.SwapIntervalSGI)
            _glfw.glx.SGI_swap_control = GL_TRUE;
    }

    if (FUNC2("GLX_MESA_swap_control"))
    {
        _glfw.glx.SwapIntervalMESA = (PFNGLXSWAPINTERVALMESAPROC)
            FUNC3("glXSwapIntervalMESA");

        if (_glfw.glx.SwapIntervalMESA)
            _glfw.glx.MESA_swap_control = GL_TRUE;
    }

    if (FUNC2("GLX_ARB_multisample"))
        _glfw.glx.ARB_multisample = GL_TRUE;

    if (FUNC2("GLX_ARB_framebuffer_sRGB"))
        _glfw.glx.ARB_framebuffer_sRGB = GL_TRUE;

    if (FUNC2("GLX_EXT_framebuffer_sRGB"))
        _glfw.glx.EXT_framebuffer_sRGB = GL_TRUE;

    if (FUNC2("GLX_ARB_create_context"))
    {
        _glfw.glx.CreateContextAttribsARB = (PFNGLXCREATECONTEXTATTRIBSARBPROC)
            FUNC3("glXCreateContextAttribsARB");

        if (_glfw.glx.CreateContextAttribsARB)
            _glfw.glx.ARB_create_context = GL_TRUE;
    }

    if (FUNC2("GLX_ARB_create_context_robustness"))
        _glfw.glx.ARB_create_context_robustness = GL_TRUE;

    if (FUNC2("GLX_ARB_create_context_profile"))
        _glfw.glx.ARB_create_context_profile = GL_TRUE;

    if (FUNC2("GLX_EXT_create_context_es2_profile"))
        _glfw.glx.EXT_create_context_es2_profile = GL_TRUE;

    if (FUNC2("GLX_ARB_context_flush_control"))
        _glfw.glx.ARB_context_flush_control = GL_TRUE;

    return GL_TRUE;
}