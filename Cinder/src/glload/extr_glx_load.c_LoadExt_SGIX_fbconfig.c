
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXGETVISUALFROMFBCONFIGSGIXPROC ;
typedef scalar_t__ PFNGLXGETFBCONFIGFROMVISUALSGIXPROC ;
typedef scalar_t__ PFNGLXGETFBCONFIGATTRIBSGIXPROC ;
typedef scalar_t__ PFNGLXCREATEGLXPIXMAPWITHCONFIGSGIXPROC ;
typedef scalar_t__ PFNGLXCREATECONTEXTWITHCONFIGSGIXPROC ;
typedef scalar_t__ PFNGLXCHOOSEFBCONFIGSGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXChooseFBConfigSGIX ;
 scalar_t__ _funcptr_glXCreateContextWithConfigSGIX ;
 scalar_t__ _funcptr_glXCreateGLXPixmapWithConfigSGIX ;
 scalar_t__ _funcptr_glXGetFBConfigAttribSGIX ;
 scalar_t__ _funcptr_glXGetFBConfigFromVisualSGIX ;
 scalar_t__ _funcptr_glXGetVisualFromFBConfigSGIX ;

__attribute__((used)) static int LoadExt_SGIX_fbconfig()
{
 int numFailed = 0;
 _funcptr_glXChooseFBConfigSGIX = (PFNGLXCHOOSEFBCONFIGSGIXPROC)IntGetProcAddress("glXChooseFBConfigSGIX");
 if(!_funcptr_glXChooseFBConfigSGIX) ++numFailed;
 _funcptr_glXCreateContextWithConfigSGIX = (PFNGLXCREATECONTEXTWITHCONFIGSGIXPROC)IntGetProcAddress("glXCreateContextWithConfigSGIX");
 if(!_funcptr_glXCreateContextWithConfigSGIX) ++numFailed;
 _funcptr_glXCreateGLXPixmapWithConfigSGIX = (PFNGLXCREATEGLXPIXMAPWITHCONFIGSGIXPROC)IntGetProcAddress("glXCreateGLXPixmapWithConfigSGIX");
 if(!_funcptr_glXCreateGLXPixmapWithConfigSGIX) ++numFailed;
 _funcptr_glXGetFBConfigAttribSGIX = (PFNGLXGETFBCONFIGATTRIBSGIXPROC)IntGetProcAddress("glXGetFBConfigAttribSGIX");
 if(!_funcptr_glXGetFBConfigAttribSGIX) ++numFailed;
 _funcptr_glXGetFBConfigFromVisualSGIX = (PFNGLXGETFBCONFIGFROMVISUALSGIXPROC)IntGetProcAddress("glXGetFBConfigFromVisualSGIX");
 if(!_funcptr_glXGetFBConfigFromVisualSGIX) ++numFailed;
 _funcptr_glXGetVisualFromFBConfigSGIX = (PFNGLXGETVISUALFROMFBCONFIGSGIXPROC)IntGetProcAddress("glXGetVisualFromFBConfigSGIX");
 if(!_funcptr_glXGetVisualFromFBConfigSGIX) ++numFailed;
 return numFailed;
}
