
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCOPYTEXSUBIMAGE3DEXTPROC ;
typedef scalar_t__ PFNGLCOPYTEXSUBIMAGE2DEXTPROC ;
typedef scalar_t__ PFNGLCOPYTEXSUBIMAGE1DEXTPROC ;
typedef scalar_t__ PFNGLCOPYTEXIMAGE2DEXTPROC ;
typedef scalar_t__ PFNGLCOPYTEXIMAGE1DEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glCopyTexImage1DEXT ;
 scalar_t__ _funcptr_glCopyTexImage2DEXT ;
 scalar_t__ _funcptr_glCopyTexSubImage1DEXT ;
 scalar_t__ _funcptr_glCopyTexSubImage2DEXT ;
 scalar_t__ _funcptr_glCopyTexSubImage3DEXT ;

__attribute__((used)) static int LoadExt_EXT_copy_texture()
{
 int numFailed = 0;
 _funcptr_glCopyTexImage1DEXT = (PFNGLCOPYTEXIMAGE1DEXTPROC)IntGetProcAddress("glCopyTexImage1DEXT");
 if(!_funcptr_glCopyTexImage1DEXT) ++numFailed;
 _funcptr_glCopyTexImage2DEXT = (PFNGLCOPYTEXIMAGE2DEXTPROC)IntGetProcAddress("glCopyTexImage2DEXT");
 if(!_funcptr_glCopyTexImage2DEXT) ++numFailed;
 _funcptr_glCopyTexSubImage1DEXT = (PFNGLCOPYTEXSUBIMAGE1DEXTPROC)IntGetProcAddress("glCopyTexSubImage1DEXT");
 if(!_funcptr_glCopyTexSubImage1DEXT) ++numFailed;
 _funcptr_glCopyTexSubImage2DEXT = (PFNGLCOPYTEXSUBIMAGE2DEXTPROC)IntGetProcAddress("glCopyTexSubImage2DEXT");
 if(!_funcptr_glCopyTexSubImage2DEXT) ++numFailed;
 _funcptr_glCopyTexSubImage3DEXT = (PFNGLCOPYTEXSUBIMAGE3DEXTPROC)IntGetProcAddress("glCopyTexSubImage3DEXT");
 if(!_funcptr_glCopyTexSubImage3DEXT) ++numFailed;
 return numFailed;
}
