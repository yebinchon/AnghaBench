
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* ARB_context_flush_control; void* ARB_pixel_format; void* EXT_swap_control; void* ARB_create_context_robustness; void* EXT_create_context_es2_profile; void* ARB_create_context_profile; void* ARB_create_context; void* EXT_framebuffer_sRGB; void* ARB_framebuffer_sRGB; void* ARB_multisample; scalar_t__ GetPixelFormatAttribivARB; scalar_t__ SwapIntervalEXT; scalar_t__ CreateContextAttribsARB; scalar_t__ GetExtensionsStringARB; scalar_t__ GetExtensionsStringEXT; } ;
struct TYPE_5__ {TYPE_1__ wgl; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef scalar_t__ PFNWGLSWAPINTERVALEXTPROC ;
typedef scalar_t__ PFNWGLGETPIXELFORMATATTRIBIVARBPROC ;
typedef scalar_t__ PFNWGLGETEXTENSIONSSTRINGEXTPROC ;
typedef scalar_t__ PFNWGLGETEXTENSIONSSTRINGARBPROC ;
typedef scalar_t__ PFNWGLCREATECONTEXTATTRIBSARBPROC ;


 void* _glfwPlatformExtensionSupported (char*) ;
 scalar_t__ _glfw_wglGetProcAddress (char*) ;

__attribute__((used)) static void initWGLExtensions(_GLFWwindow* window)
{


    window->wgl.GetExtensionsStringEXT = (PFNWGLGETEXTENSIONSSTRINGEXTPROC)
        _glfw_wglGetProcAddress("wglGetExtensionsStringEXT");
    window->wgl.GetExtensionsStringARB = (PFNWGLGETEXTENSIONSSTRINGARBPROC)
        _glfw_wglGetProcAddress("wglGetExtensionsStringARB");


    window->wgl.CreateContextAttribsARB = (PFNWGLCREATECONTEXTATTRIBSARBPROC)
        _glfw_wglGetProcAddress("wglCreateContextAttribsARB");


    window->wgl.SwapIntervalEXT = (PFNWGLSWAPINTERVALEXTPROC)
        _glfw_wglGetProcAddress("wglSwapIntervalEXT");


    window->wgl.GetPixelFormatAttribivARB = (PFNWGLGETPIXELFORMATATTRIBIVARBPROC)
        _glfw_wglGetProcAddress("wglGetPixelFormatAttribivARB");



    window->wgl.ARB_multisample =
        _glfwPlatformExtensionSupported("WGL_ARB_multisample");
    window->wgl.ARB_framebuffer_sRGB =
        _glfwPlatformExtensionSupported("WGL_ARB_framebuffer_sRGB");
    window->wgl.EXT_framebuffer_sRGB =
        _glfwPlatformExtensionSupported("WGL_EXT_framebuffer_sRGB");
    window->wgl.ARB_create_context =
        _glfwPlatformExtensionSupported("WGL_ARB_create_context");
    window->wgl.ARB_create_context_profile =
        _glfwPlatformExtensionSupported("WGL_ARB_create_context_profile");
    window->wgl.EXT_create_context_es2_profile =
        _glfwPlatformExtensionSupported("WGL_EXT_create_context_es2_profile");
    window->wgl.ARB_create_context_robustness =
        _glfwPlatformExtensionSupported("WGL_ARB_create_context_robustness");
    window->wgl.EXT_swap_control =
        _glfwPlatformExtensionSupported("WGL_EXT_swap_control");
    window->wgl.ARB_pixel_format =
        _glfwPlatformExtensionSupported("WGL_ARB_pixel_format");
    window->wgl.ARB_context_flush_control =
        _glfwPlatformExtensionSupported("WGL_ARB_context_flush_control");
}
