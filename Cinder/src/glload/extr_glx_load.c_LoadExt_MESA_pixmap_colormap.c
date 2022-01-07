
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXCREATEGLXPIXMAPMESAPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXCreateGLXPixmapMESA ;

__attribute__((used)) static int LoadExt_MESA_pixmap_colormap()
{
 int numFailed = 0;
 _funcptr_glXCreateGLXPixmapMESA = (PFNGLXCREATEGLXPIXMAPMESAPROC)IntGetProcAddress("glXCreateGLXPixmapMESA");
 if(!_funcptr_glXCreateGLXPixmapMESA) ++numFailed;
 return numFailed;
}
