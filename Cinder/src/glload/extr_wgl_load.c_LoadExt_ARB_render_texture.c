
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLSETPBUFFERATTRIBARBPROC ;
typedef scalar_t__ PFNWGLRELEASETEXIMAGEARBPROC ;
typedef scalar_t__ PFNWGLBINDTEXIMAGEARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglBindTexImageARB ;
 scalar_t__ _funcptr_wglReleaseTexImageARB ;
 scalar_t__ _funcptr_wglSetPbufferAttribARB ;

__attribute__((used)) static int LoadExt_ARB_render_texture()
{
 int numFailed = 0;
 _funcptr_wglBindTexImageARB = (PFNWGLBINDTEXIMAGEARBPROC)IntGetProcAddress("wglBindTexImageARB");
 if(!_funcptr_wglBindTexImageARB) ++numFailed;
 _funcptr_wglReleaseTexImageARB = (PFNWGLRELEASETEXIMAGEARBPROC)IntGetProcAddress("wglReleaseTexImageARB");
 if(!_funcptr_wglReleaseTexImageARB) ++numFailed;
 _funcptr_wglSetPbufferAttribARB = (PFNWGLSETPBUFFERATTRIBARBPROC)IntGetProcAddress("wglSetPbufferAttribARB");
 if(!_funcptr_wglSetPbufferAttribARB) ++numFailed;
 return numFailed;
}
