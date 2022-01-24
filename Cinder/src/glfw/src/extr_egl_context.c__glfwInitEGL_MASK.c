#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int prefix; scalar_t__ display; void* KHR_gl_colorspace; void* KHR_create_context_no_error; void* KHR_create_context; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; scalar_t__ GetProcAddress; scalar_t__ QueryString; scalar_t__ SwapInterval; scalar_t__ SwapBuffers; scalar_t__ MakeCurrent; scalar_t__ CreateWindowSurface; scalar_t__ DestroyContext; scalar_t__ DestroySurface; scalar_t__ CreateContext; scalar_t__ BindAPI; scalar_t__ Terminate; scalar_t__ Initialize; scalar_t__ GetError; scalar_t__ GetDisplay; scalar_t__ GetConfigs; scalar_t__ GetConfigAttrib; scalar_t__ handle; } ;
struct TYPE_4__ {TYPE_1__ egl; } ;
typedef  scalar_t__ PFNEGLTERMINATEPROC ;
typedef  scalar_t__ PFNEGLSWAPINTERVALPROC ;
typedef  scalar_t__ PFNEGLSWAPBUFFERSPROC ;
typedef  scalar_t__ PFNEGLQUERYSTRINGPROC ;
typedef  scalar_t__ PFNEGLMAKECURRENTPROC ;
typedef  scalar_t__ PFNEGLINITIALIZEPROC ;
typedef  scalar_t__ PFNEGLGETPROCADDRESSPROC ;
typedef  scalar_t__ PFNEGLGETERRORPROC ;
typedef  scalar_t__ PFNEGLGETDISPLAYPROC ;
typedef  scalar_t__ PFNEGLGETCONFIGSPROC ;
typedef  scalar_t__ PFNEGLGETCONFIGATTRIBPROC ;
typedef  scalar_t__ PFNEGLDESTROYSURFACEPROC ;
typedef  scalar_t__ PFNEGLDESTROYCONTEXTPROC ;
typedef  scalar_t__ PFNEGLCREATEWINDOWSURFACEPROC ;
typedef  scalar_t__ PFNEGLCREATECONTEXTPROC ;
typedef  scalar_t__ PFNEGLBINDAPIPROC ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 scalar_t__ EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  GLFW_API_UNAVAILABLE ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  _GLFW_EGL_NATIVE_DISPLAY ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,char*,int) ; 

GLFWbool FUNC10(void)
{
    int i;
    const char* sonames[] =
    {
#if defined(_GLFW_WIN32)
        "libEGL.dll",
        "EGL.dll",
#elif defined(_GLFW_COCOA)
        "libEGL.dylib",
#else
        "libEGL.so.1",
#endif
        NULL
    };

    if (_glfw.egl.handle)
        return GLFW_TRUE;

    for (i = 0;  sonames[i];  i++)
    {
        _glfw.egl.handle = FUNC2(sonames[i]);
        if (_glfw.egl.handle)
            break;
    }

    if (!_glfw.egl.handle)
    {
        FUNC0(GLFW_API_UNAVAILABLE, "EGL: Library not found");
        return GLFW_FALSE;
    }

    _glfw.egl.prefix = (FUNC9(sonames[i], "lib", 3) == 0);

    _glfw.egl.GetConfigAttrib = (PFNEGLGETCONFIGATTRIBPROC)
        FUNC3(_glfw.egl.handle, "eglGetConfigAttrib");
    _glfw.egl.GetConfigs = (PFNEGLGETCONFIGSPROC)
        FUNC3(_glfw.egl.handle, "eglGetConfigs");
    _glfw.egl.GetDisplay = (PFNEGLGETDISPLAYPROC)
        FUNC3(_glfw.egl.handle, "eglGetDisplay");
    _glfw.egl.GetError = (PFNEGLGETERRORPROC)
        FUNC3(_glfw.egl.handle, "eglGetError");
    _glfw.egl.Initialize = (PFNEGLINITIALIZEPROC)
        FUNC3(_glfw.egl.handle, "eglInitialize");
    _glfw.egl.Terminate = (PFNEGLTERMINATEPROC)
        FUNC3(_glfw.egl.handle, "eglTerminate");
    _glfw.egl.BindAPI = (PFNEGLBINDAPIPROC)
        FUNC3(_glfw.egl.handle, "eglBindAPI");
    _glfw.egl.CreateContext = (PFNEGLCREATECONTEXTPROC)
        FUNC3(_glfw.egl.handle, "eglCreateContext");
    _glfw.egl.DestroySurface = (PFNEGLDESTROYSURFACEPROC)
        FUNC3(_glfw.egl.handle, "eglDestroySurface");
    _glfw.egl.DestroyContext = (PFNEGLDESTROYCONTEXTPROC)
        FUNC3(_glfw.egl.handle, "eglDestroyContext");
    _glfw.egl.CreateWindowSurface = (PFNEGLCREATEWINDOWSURFACEPROC)
        FUNC3(_glfw.egl.handle, "eglCreateWindowSurface");
    _glfw.egl.MakeCurrent = (PFNEGLMAKECURRENTPROC)
        FUNC3(_glfw.egl.handle, "eglMakeCurrent");
    _glfw.egl.SwapBuffers = (PFNEGLSWAPBUFFERSPROC)
        FUNC3(_glfw.egl.handle, "eglSwapBuffers");
    _glfw.egl.SwapInterval = (PFNEGLSWAPINTERVALPROC)
        FUNC3(_glfw.egl.handle, "eglSwapInterval");
    _glfw.egl.QueryString = (PFNEGLQUERYSTRINGPROC)
        FUNC3(_glfw.egl.handle, "eglQueryString");
    _glfw.egl.GetProcAddress = (PFNEGLGETPROCADDRESSPROC)
        FUNC3(_glfw.egl.handle, "eglGetProcAddress");

    if (!_glfw.egl.GetConfigAttrib ||
        !_glfw.egl.GetConfigs ||
        !_glfw.egl.GetDisplay ||
        !_glfw.egl.GetError ||
        !_glfw.egl.Initialize ||
        !_glfw.egl.Terminate ||
        !_glfw.egl.BindAPI ||
        !_glfw.egl.CreateContext ||
        !_glfw.egl.DestroySurface ||
        !_glfw.egl.DestroyContext ||
        !_glfw.egl.CreateWindowSurface ||
        !_glfw.egl.MakeCurrent ||
        !_glfw.egl.SwapBuffers ||
        !_glfw.egl.SwapInterval ||
        !_glfw.egl.QueryString ||
        !_glfw.egl.GetProcAddress)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "EGL: Failed to load required entry points");

        FUNC1();
        return GLFW_FALSE;
    }

    _glfw.egl.display = FUNC4(_GLFW_EGL_NATIVE_DISPLAY);
    if (_glfw.egl.display == EGL_NO_DISPLAY)
    {
        FUNC0(GLFW_API_UNAVAILABLE,
                        "EGL: Failed to get EGL display: %s",
                        FUNC8(FUNC5()));

        FUNC1();
        return GLFW_FALSE;
    }

    if (!FUNC6(_glfw.egl.display, &_glfw.egl.major, &_glfw.egl.minor))
    {
        FUNC0(GLFW_API_UNAVAILABLE,
                        "EGL: Failed to initialize EGL: %s",
                        FUNC8(FUNC5()));

        FUNC1();
        return GLFW_FALSE;
    }

    _glfw.egl.KHR_create_context =
        FUNC7("EGL_KHR_create_context");
    _glfw.egl.KHR_create_context_no_error =
        FUNC7("EGL_KHR_create_context_no_error");
    _glfw.egl.KHR_gl_colorspace =
        FUNC7("EGL_KHR_gl_colorspace");

    return GLFW_TRUE;
}