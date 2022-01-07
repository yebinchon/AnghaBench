
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WGLSHARELISTS_T ;
typedef scalar_t__ WGLMAKECURRENT_T ;
typedef scalar_t__ WGLGETPROCADDRESS_T ;
typedef scalar_t__ WGLDELETECONTEXT_T ;
typedef scalar_t__ WGLCREATECONTEXT_T ;
struct TYPE_4__ {scalar_t__ ShareLists; scalar_t__ MakeCurrent; scalar_t__ GetProcAddress; scalar_t__ DeleteContext; scalar_t__ CreateContext; int instance; } ;
struct TYPE_5__ {TYPE_1__ opengl32; } ;
struct TYPE_6__ {TYPE_2__ wgl; } ;


 int GLFW_PLATFORM_ERROR ;
 int GL_FALSE ;
 int GL_TRUE ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryW (char*) ;
 TYPE_3__ _glfw ;
 int _glfwCreateContextTLS () ;
 int _glfwInputError (int ,char*) ;

int _glfwInitContextAPI(void)
{
    if (!_glfwCreateContextTLS())
        return GL_FALSE;

    _glfw.wgl.opengl32.instance = LoadLibraryW(L"opengl32.dll");
    if (!_glfw.wgl.opengl32.instance)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR, "WGL: Failed to load opengl32.dll");
        return GL_FALSE;
    }

    _glfw.wgl.opengl32.CreateContext = (WGLCREATECONTEXT_T)
        GetProcAddress(_glfw.wgl.opengl32.instance, "wglCreateContext");
    _glfw.wgl.opengl32.DeleteContext = (WGLDELETECONTEXT_T)
        GetProcAddress(_glfw.wgl.opengl32.instance, "wglDeleteContext");
    _glfw.wgl.opengl32.GetProcAddress = (WGLGETPROCADDRESS_T)
        GetProcAddress(_glfw.wgl.opengl32.instance, "wglGetProcAddress");
    _glfw.wgl.opengl32.MakeCurrent = (WGLMAKECURRENT_T)
        GetProcAddress(_glfw.wgl.opengl32.instance, "wglMakeCurrent");
    _glfw.wgl.opengl32.ShareLists = (WGLSHARELISTS_T)
        GetProcAddress(_glfw.wgl.opengl32.instance, "wglShareLists");

    if (!_glfw.wgl.opengl32.CreateContext ||
        !_glfw.wgl.opengl32.DeleteContext ||
        !_glfw.wgl.opengl32.GetProcAddress ||
        !_glfw.wgl.opengl32.MakeCurrent ||
        !_glfw.wgl.opengl32.ShareLists)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "WGL: Failed to load opengl32 functions");
        return GL_FALSE;
    }

    return GL_TRUE;
}
