
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLITFRAMEBUFFEREXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBlitFramebufferEXT ;

__attribute__((used)) static int LoadExt_EXT_framebuffer_blit()
{
 int numFailed = 0;
 _funcptr_glBlitFramebufferEXT = (PFNGLBLITFRAMEBUFFEREXTPROC)IntGetProcAddress("glBlitFramebufferEXT");
 if(!_funcptr_glBlitFramebufferEXT) ++numFailed;
 return numFailed;
}
