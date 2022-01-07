
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPIXELTEXGENSGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glPixelTexGenSGIX ;

__attribute__((used)) static int LoadExt_SGIX_pixel_texture()
{
 int numFailed = 0;
 _funcptr_glPixelTexGenSGIX = (PFNGLPIXELTEXGENSGIXPROC)IntGetProcAddress("glPixelTexGenSGIX");
 if(!_funcptr_glPixelTexGenSGIX) ++numFailed;
 return numFailed;
}
