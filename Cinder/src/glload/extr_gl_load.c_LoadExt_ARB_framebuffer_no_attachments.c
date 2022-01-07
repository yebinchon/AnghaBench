
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETFRAMEBUFFERPARAMETERIVPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERPARAMETERIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glFramebufferParameteri ;
 scalar_t__ _funcptr_glGetFramebufferParameteriv ;

__attribute__((used)) static int LoadExt_ARB_framebuffer_no_attachments()
{
 int numFailed = 0;
 _funcptr_glFramebufferParameteri = (PFNGLFRAMEBUFFERPARAMETERIPROC)IntGetProcAddress("glFramebufferParameteri");
 if(!_funcptr_glFramebufferParameteri) ++numFailed;
 _funcptr_glGetFramebufferParameteriv = (PFNGLGETFRAMEBUFFERPARAMETERIVPROC)IntGetProcAddress("glGetFramebufferParameteriv");
 if(!_funcptr_glGetFramebufferParameteriv) ++numFailed;
 return numFailed;
}
