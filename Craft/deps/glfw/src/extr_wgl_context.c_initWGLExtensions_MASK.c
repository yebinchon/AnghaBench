#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* ARB_context_flush_control; void* ARB_pixel_format; void* EXT_swap_control; void* ARB_create_context_robustness; void* EXT_create_context_es2_profile; void* ARB_create_context_profile; void* ARB_create_context; void* EXT_framebuffer_sRGB; void* ARB_framebuffer_sRGB; void* ARB_multisample; scalar_t__ GetPixelFormatAttribivARB; scalar_t__ SwapIntervalEXT; scalar_t__ CreateContextAttribsARB; scalar_t__ GetExtensionsStringARB; scalar_t__ GetExtensionsStringEXT; } ;
struct TYPE_5__ {TYPE_1__ wgl; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  scalar_t__ PFNWGLSWAPINTERVALEXTPROC ;
typedef  scalar_t__ PFNWGLGETPIXELFORMATATTRIBIVARBPROC ;
typedef  scalar_t__ PFNWGLGETEXTENSIONSSTRINGEXTPROC ;
typedef  scalar_t__ PFNWGLGETEXTENSIONSSTRINGARBPROC ;
typedef  scalar_t__ PFNWGLCREATECONTEXTATTRIBSARBPROC ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(_GLFWwindow* window)
{
    // Functions for WGL_EXT_extension_string
    // NOTE: These are needed by _glfwPlatformExtensionSupported
    window->wgl.GetExtensionsStringEXT = (PFNWGLGETEXTENSIONSSTRINGEXTPROC)
        FUNC1("wglGetExtensionsStringEXT");
    window->wgl.GetExtensionsStringARB = (PFNWGLGETEXTENSIONSSTRINGARBPROC)
        FUNC1("wglGetExtensionsStringARB");

    // Functions for WGL_ARB_create_context
    window->wgl.CreateContextAttribsARB = (PFNWGLCREATECONTEXTATTRIBSARBPROC)
        FUNC1("wglCreateContextAttribsARB");

    // Functions for WGL_EXT_swap_control
    window->wgl.SwapIntervalEXT = (PFNWGLSWAPINTERVALEXTPROC)
        FUNC1("wglSwapIntervalEXT");

    // Functions for WGL_ARB_pixel_format
    window->wgl.GetPixelFormatAttribivARB = (PFNWGLGETPIXELFORMATATTRIBIVARBPROC)
        FUNC1("wglGetPixelFormatAttribivARB");

    // This needs to include every extension used below except for
    // WGL_ARB_extensions_string and WGL_EXT_extensions_string
    window->wgl.ARB_multisample =
        FUNC0("WGL_ARB_multisample");
    window->wgl.ARB_framebuffer_sRGB =
        FUNC0("WGL_ARB_framebuffer_sRGB");
    window->wgl.EXT_framebuffer_sRGB =
        FUNC0("WGL_EXT_framebuffer_sRGB");
    window->wgl.ARB_create_context =
        FUNC0("WGL_ARB_create_context");
    window->wgl.ARB_create_context_profile =
        FUNC0("WGL_ARB_create_context_profile");
    window->wgl.EXT_create_context_es2_profile =
        FUNC0("WGL_EXT_create_context_es2_profile");
    window->wgl.ARB_create_context_robustness =
        FUNC0("WGL_ARB_create_context_robustness");
    window->wgl.EXT_swap_control =
        FUNC0("WGL_EXT_swap_control");
    window->wgl.ARB_pixel_format =
        FUNC0("WGL_ARB_pixel_format");
    window->wgl.ARB_context_flush_control =
        FUNC0("WGL_ARB_context_flush_control");
}