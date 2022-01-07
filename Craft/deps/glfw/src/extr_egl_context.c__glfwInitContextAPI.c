
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ display; int KHR_create_context; int minor; int major; scalar_t__ handle; void* GetProcAddress; void* QueryString; void* SwapInterval; void* SwapBuffers; void* MakeCurrent; void* CreateWindowSurface; void* DestroyContext; void* DestroySurface; void* CreateContext; void* BindAPI; void* Terminate; void* Initialize; void* GetError; void* GetDisplay; void* GetConfigs; void* GetConfigAttrib; } ;
struct TYPE_4__ {TYPE_1__ egl; } ;
typedef int EGLNativeDisplayType ;


 scalar_t__ EGL_NO_DISPLAY ;
 int GLFW_API_UNAVAILABLE ;
 int GL_FALSE ;
 int GL_TRUE ;
 scalar_t__ _GLFW_EGL_NATIVE_DISPLAY ;
 TYPE_2__ _glfw ;
 int _glfwCreateContextTLS () ;
 int _glfwInputError (int ,char*,...) ;
 int _glfwPlatformExtensionSupported (char*) ;
 scalar_t__ _glfw_dlopen (char const*) ;
 void* _glfw_dlsym (scalar_t__,char*) ;
 scalar_t__ _glfw_eglGetDisplay (int ) ;
 int _glfw_eglGetError () ;
 int _glfw_eglInitialize (scalar_t__,int *,int *) ;
 int getErrorString (int ) ;

int _glfwInitContextAPI(void)
{
    int i;
    const char* sonames[] =
    {






        "libEGL.so.1",

        ((void*)0)
    };

    if (!_glfwCreateContextTLS())
        return GL_FALSE;

    for (i = 0; sonames[i]; i++)
    {
        _glfw.egl.handle = _glfw_dlopen(sonames[i]);
        if (_glfw.egl.handle)
            break;
    }

    if (!_glfw.egl.handle)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE, "EGL: Failed to load EGL");
        return GL_FALSE;
    }

    _glfw.egl.GetConfigAttrib =
        _glfw_dlsym(_glfw.egl.handle, "eglGetConfigAttrib");
    _glfw.egl.GetConfigs =
        _glfw_dlsym(_glfw.egl.handle, "eglGetConfigs");
    _glfw.egl.GetDisplay =
        _glfw_dlsym(_glfw.egl.handle, "eglGetDisplay");
    _glfw.egl.GetError =
        _glfw_dlsym(_glfw.egl.handle, "eglGetError");
    _glfw.egl.Initialize =
        _glfw_dlsym(_glfw.egl.handle, "eglInitialize");
    _glfw.egl.Terminate =
        _glfw_dlsym(_glfw.egl.handle, "eglTerminate");
    _glfw.egl.BindAPI =
        _glfw_dlsym(_glfw.egl.handle, "eglBindAPI");
    _glfw.egl.CreateContext =
        _glfw_dlsym(_glfw.egl.handle, "eglCreateContext");
    _glfw.egl.DestroySurface =
        _glfw_dlsym(_glfw.egl.handle, "eglDestroySurface");
    _glfw.egl.DestroyContext =
        _glfw_dlsym(_glfw.egl.handle, "eglDestroyContext");
    _glfw.egl.CreateWindowSurface =
        _glfw_dlsym(_glfw.egl.handle, "eglCreateWindowSurface");
    _glfw.egl.MakeCurrent =
        _glfw_dlsym(_glfw.egl.handle, "eglMakeCurrent");
    _glfw.egl.SwapBuffers =
        _glfw_dlsym(_glfw.egl.handle, "eglSwapBuffers");
    _glfw.egl.SwapInterval =
        _glfw_dlsym(_glfw.egl.handle, "eglSwapInterval");
    _glfw.egl.QueryString =
        _glfw_dlsym(_glfw.egl.handle, "eglQueryString");
    _glfw.egl.GetProcAddress =
        _glfw_dlsym(_glfw.egl.handle, "eglGetProcAddress");

    _glfw.egl.display =
        _glfw_eglGetDisplay((EGLNativeDisplayType)_GLFW_EGL_NATIVE_DISPLAY);
    if (_glfw.egl.display == EGL_NO_DISPLAY)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "EGL: Failed to get EGL display: %s",
                        getErrorString(_glfw_eglGetError()));
        return GL_FALSE;
    }

    if (!_glfw_eglInitialize(_glfw.egl.display,
                             &_glfw.egl.major,
                             &_glfw.egl.minor))
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "EGL: Failed to initialize EGL: %s",
                        getErrorString(_glfw_eglGetError()));
        return GL_FALSE;
    }

    _glfw.egl.KHR_create_context =
        _glfwPlatformExtensionSupported("EGL_KHR_create_context");

    return GL_TRUE;
}
