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
struct TYPE_3__ {scalar_t__ display; int /*<<< orphan*/  KHR_create_context; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; scalar_t__ handle; void* GetProcAddress; void* QueryString; void* SwapInterval; void* SwapBuffers; void* MakeCurrent; void* CreateWindowSurface; void* DestroyContext; void* DestroySurface; void* CreateContext; void* BindAPI; void* Terminate; void* Initialize; void* GetError; void* GetDisplay; void* GetConfigs; void* GetConfigAttrib; } ;
struct TYPE_4__ {TYPE_1__ egl; } ;
typedef  int /*<<< orphan*/  EGLNativeDisplayType ;

/* Variables and functions */
 scalar_t__ EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  GLFW_API_UNAVAILABLE ; 
 int GL_FALSE ; 
 int GL_TRUE ; 
 scalar_t__ _GLFW_EGL_NATIVE_DISPLAY ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 void* FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(void)
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

    if (!FUNC0())
        return GL_FALSE;

    for (i = 0;  sonames[i];  i++)
    {
        _glfw.egl.handle = FUNC3(sonames[i]);
        if (_glfw.egl.handle)
            break;
    }

    if (!_glfw.egl.handle)
    {
        FUNC1(GLFW_API_UNAVAILABLE, "EGL: Failed to load EGL");
        return GL_FALSE;
    }

    _glfw.egl.GetConfigAttrib =
        FUNC4(_glfw.egl.handle, "eglGetConfigAttrib");
    _glfw.egl.GetConfigs =
        FUNC4(_glfw.egl.handle, "eglGetConfigs");
    _glfw.egl.GetDisplay =
        FUNC4(_glfw.egl.handle, "eglGetDisplay");
    _glfw.egl.GetError =
        FUNC4(_glfw.egl.handle, "eglGetError");
    _glfw.egl.Initialize =
        FUNC4(_glfw.egl.handle, "eglInitialize");
    _glfw.egl.Terminate =
        FUNC4(_glfw.egl.handle, "eglTerminate");
    _glfw.egl.BindAPI =
        FUNC4(_glfw.egl.handle, "eglBindAPI");
    _glfw.egl.CreateContext =
        FUNC4(_glfw.egl.handle, "eglCreateContext");
    _glfw.egl.DestroySurface =
        FUNC4(_glfw.egl.handle, "eglDestroySurface");
    _glfw.egl.DestroyContext =
        FUNC4(_glfw.egl.handle, "eglDestroyContext");
    _glfw.egl.CreateWindowSurface =
        FUNC4(_glfw.egl.handle, "eglCreateWindowSurface");
    _glfw.egl.MakeCurrent =
        FUNC4(_glfw.egl.handle, "eglMakeCurrent");
    _glfw.egl.SwapBuffers =
        FUNC4(_glfw.egl.handle, "eglSwapBuffers");
    _glfw.egl.SwapInterval =
        FUNC4(_glfw.egl.handle, "eglSwapInterval");
    _glfw.egl.QueryString =
        FUNC4(_glfw.egl.handle, "eglQueryString");
    _glfw.egl.GetProcAddress =
        FUNC4(_glfw.egl.handle, "eglGetProcAddress");

    _glfw.egl.display =
        FUNC5((EGLNativeDisplayType)_GLFW_EGL_NATIVE_DISPLAY);
    if (_glfw.egl.display == EGL_NO_DISPLAY)
    {
        FUNC1(GLFW_API_UNAVAILABLE,
                        "EGL: Failed to get EGL display: %s",
                        FUNC8(FUNC6()));
        return GL_FALSE;
    }

    if (!FUNC7(_glfw.egl.display,
                             &_glfw.egl.major,
                             &_glfw.egl.minor))
    {
        FUNC1(GLFW_API_UNAVAILABLE,
                        "EGL: Failed to initialize EGL: %s",
                        FUNC8(FUNC6()));
        return GL_FALSE;
    }

    _glfw.egl.KHR_create_context =
        FUNC2("EGL_KHR_create_context");

    return GL_TRUE;
}