
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLGETPIXELFORMATATTRIBIVARBPROC ;
typedef scalar_t__ PFNWGLGETPIXELFORMATATTRIBFVARBPROC ;
typedef scalar_t__ PFNWGLCHOOSEPIXELFORMATARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglChoosePixelFormatARB ;
 scalar_t__ _funcptr_wglGetPixelFormatAttribfvARB ;
 scalar_t__ _funcptr_wglGetPixelFormatAttribivARB ;

__attribute__((used)) static int LoadExt_ARB_pixel_format()
{
 int numFailed = 0;
 _funcptr_wglChoosePixelFormatARB = (PFNWGLCHOOSEPIXELFORMATARBPROC)IntGetProcAddress("wglChoosePixelFormatARB");
 if(!_funcptr_wglChoosePixelFormatARB) ++numFailed;
 _funcptr_wglGetPixelFormatAttribfvARB = (PFNWGLGETPIXELFORMATATTRIBFVARBPROC)IntGetProcAddress("wglGetPixelFormatAttribfvARB");
 if(!_funcptr_wglGetPixelFormatAttribfvARB) ++numFailed;
 _funcptr_wglGetPixelFormatAttribivARB = (PFNWGLGETPIXELFORMATATTRIBIVARBPROC)IntGetProcAddress("wglGetPixelFormatAttribivARB");
 if(!_funcptr_wglGetPixelFormatAttribivARB) ++numFailed;
 return numFailed;
}
