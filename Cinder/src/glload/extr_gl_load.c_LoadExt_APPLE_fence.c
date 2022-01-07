
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTESTOBJECTAPPLEPROC ;
typedef scalar_t__ PFNGLTESTFENCEAPPLEPROC ;
typedef scalar_t__ PFNGLSETFENCEAPPLEPROC ;
typedef scalar_t__ PFNGLISFENCEAPPLEPROC ;
typedef scalar_t__ PFNGLGENFENCESAPPLEPROC ;
typedef scalar_t__ PFNGLFINISHOBJECTAPPLEPROC ;
typedef scalar_t__ PFNGLFINISHFENCEAPPLEPROC ;
typedef scalar_t__ PFNGLDELETEFENCESAPPLEPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDeleteFencesAPPLE ;
 scalar_t__ _funcptr_glFinishFenceAPPLE ;
 scalar_t__ _funcptr_glFinishObjectAPPLE ;
 scalar_t__ _funcptr_glGenFencesAPPLE ;
 scalar_t__ _funcptr_glIsFenceAPPLE ;
 scalar_t__ _funcptr_glSetFenceAPPLE ;
 scalar_t__ _funcptr_glTestFenceAPPLE ;
 scalar_t__ _funcptr_glTestObjectAPPLE ;

__attribute__((used)) static int LoadExt_APPLE_fence()
{
 int numFailed = 0;
 _funcptr_glDeleteFencesAPPLE = (PFNGLDELETEFENCESAPPLEPROC)IntGetProcAddress("glDeleteFencesAPPLE");
 if(!_funcptr_glDeleteFencesAPPLE) ++numFailed;
 _funcptr_glFinishFenceAPPLE = (PFNGLFINISHFENCEAPPLEPROC)IntGetProcAddress("glFinishFenceAPPLE");
 if(!_funcptr_glFinishFenceAPPLE) ++numFailed;
 _funcptr_glFinishObjectAPPLE = (PFNGLFINISHOBJECTAPPLEPROC)IntGetProcAddress("glFinishObjectAPPLE");
 if(!_funcptr_glFinishObjectAPPLE) ++numFailed;
 _funcptr_glGenFencesAPPLE = (PFNGLGENFENCESAPPLEPROC)IntGetProcAddress("glGenFencesAPPLE");
 if(!_funcptr_glGenFencesAPPLE) ++numFailed;
 _funcptr_glIsFenceAPPLE = (PFNGLISFENCEAPPLEPROC)IntGetProcAddress("glIsFenceAPPLE");
 if(!_funcptr_glIsFenceAPPLE) ++numFailed;
 _funcptr_glSetFenceAPPLE = (PFNGLSETFENCEAPPLEPROC)IntGetProcAddress("glSetFenceAPPLE");
 if(!_funcptr_glSetFenceAPPLE) ++numFailed;
 _funcptr_glTestFenceAPPLE = (PFNGLTESTFENCEAPPLEPROC)IntGetProcAddress("glTestFenceAPPLE");
 if(!_funcptr_glTestFenceAPPLE) ++numFailed;
 _funcptr_glTestObjectAPPLE = (PFNGLTESTOBJECTAPPLEPROC)IntGetProcAddress("glTestObjectAPPLE");
 if(!_funcptr_glTestObjectAPPLE) ++numFailed;
 return numFailed;
}
