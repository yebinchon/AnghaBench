#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pfd ;
struct TYPE_9__ {void* ARB_context_flush_control; void* ARB_pixel_format; void* EXT_swap_control; void* ARB_create_context_robustness; void* EXT_create_context_es2_profile; void* ARB_create_context_profile; void* ARB_create_context; void* EXT_framebuffer_sRGB; void* ARB_framebuffer_sRGB; void* ARB_multisample; scalar_t__ GetPixelFormatAttribivARB; scalar_t__ SwapIntervalEXT; scalar_t__ CreateContextAttribsARB; scalar_t__ GetExtensionsStringARB; scalar_t__ GetExtensionsStringEXT; int /*<<< orphan*/  extensionsLoaded; } ;
struct TYPE_8__ {int /*<<< orphan*/  helperWindowHandle; } ;
struct TYPE_11__ {TYPE_2__ wgl; TYPE_1__ win32; } ;
struct TYPE_10__ {int nSize; int nVersion; int dwFlags; int cColorBits; int /*<<< orphan*/  iPixelType; } ;
typedef  TYPE_3__ PIXELFORMATDESCRIPTOR ;
typedef  scalar_t__ PFNWGLSWAPINTERVALEXTPROC ;
typedef  scalar_t__ PFNWGLGETPIXELFORMATATTRIBIVARBPROC ;
typedef  scalar_t__ PFNWGLGETEXTENSIONSSTRINGEXTPROC ;
typedef  scalar_t__ PFNWGLGETEXTENSIONSSTRINGARBPROC ;
typedef  scalar_t__ PFNWGLCREATECONTEXTATTRIBSARBPROC ;
typedef  int /*<<< orphan*/ * HGLRC ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PFD_DOUBLEBUFFER ; 
 int PFD_DRAW_TO_WINDOW ; 
 int PFD_SUPPORT_OPENGL ; 
 int /*<<< orphan*/  PFD_TYPE_RGBA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 TYPE_4__ _glfw ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
    PIXELFORMATDESCRIPTOR pfd;
    HGLRC rc;
    HDC dc = FUNC1(_glfw.win32.helperWindowHandle);;

    _glfw.wgl.extensionsLoaded = GLFW_TRUE;

    // NOTE: A dummy context has to be created for opengl32.dll to load the
    //       OpenGL ICD, from which we can then query WGL extensions
    // NOTE: This code will accept the Microsoft GDI ICD; accelerated context
    //       creation failure occurs during manual pixel format enumeration

    FUNC3(&pfd, sizeof(pfd));
    pfd.nSize = sizeof(pfd);
    pfd.nVersion = 1;
    pfd.dwFlags = PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER;
    pfd.iPixelType = PFD_TYPE_RGBA;
    pfd.cColorBits = 24;

    if (!FUNC2(dc, FUNC0(dc, &pfd), &pfd))
    {
        FUNC4(GLFW_PLATFORM_ERROR,
                        "WGL: Failed to set pixel format for dummy context");
        return;
    }

    rc = FUNC6(dc);
    if (!rc)
    {
        FUNC4(GLFW_PLATFORM_ERROR,
                        "WGL: Failed to create dummy context");
        return;
    }

    if (!FUNC9(dc, rc))
    {
        FUNC7(rc);

        FUNC4(GLFW_PLATFORM_ERROR,
                        "WGL: Failed to make dummy context current");
        return;
    }

    // NOTE: Functions must be loaded first as they're needed to retrieve the
    //       extension string that tells us whether the functions are supported
    _glfw.wgl.GetExtensionsStringEXT = (PFNWGLGETEXTENSIONSSTRINGEXTPROC)
        FUNC8("wglGetExtensionsStringEXT");
    _glfw.wgl.GetExtensionsStringARB = (PFNWGLGETEXTENSIONSSTRINGARBPROC)
        FUNC8("wglGetExtensionsStringARB");
    _glfw.wgl.CreateContextAttribsARB = (PFNWGLCREATECONTEXTATTRIBSARBPROC)
        FUNC8("wglCreateContextAttribsARB");
    _glfw.wgl.SwapIntervalEXT = (PFNWGLSWAPINTERVALEXTPROC)
        FUNC8("wglSwapIntervalEXT");
    _glfw.wgl.GetPixelFormatAttribivARB = (PFNWGLGETPIXELFORMATATTRIBIVARBPROC)
        FUNC8("wglGetPixelFormatAttribivARB");

    // NOTE: WGL_ARB_extensions_string and WGL_EXT_extensions_string are not
    //       checked below as we are already using them
    _glfw.wgl.ARB_multisample =
        FUNC5("WGL_ARB_multisample");
    _glfw.wgl.ARB_framebuffer_sRGB =
        FUNC5("WGL_ARB_framebuffer_sRGB");
    _glfw.wgl.EXT_framebuffer_sRGB =
        FUNC5("WGL_EXT_framebuffer_sRGB");
    _glfw.wgl.ARB_create_context =
        FUNC5("WGL_ARB_create_context");
    _glfw.wgl.ARB_create_context_profile =
        FUNC5("WGL_ARB_create_context_profile");
    _glfw.wgl.EXT_create_context_es2_profile =
        FUNC5("WGL_EXT_create_context_es2_profile");
    _glfw.wgl.ARB_create_context_robustness =
        FUNC5("WGL_ARB_create_context_robustness");
    _glfw.wgl.EXT_swap_control =
        FUNC5("WGL_EXT_swap_control");
    _glfw.wgl.ARB_pixel_format =
        FUNC5("WGL_ARB_pixel_format");
    _glfw.wgl.ARB_context_flush_control =
        FUNC5("WGL_ARB_context_flush_control");

    FUNC9(dc, NULL);
    FUNC7(rc);
}