
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDPARAMETERINVPROC ;
typedef scalar_t__ PFNGLBLENDBARRIERNVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBlendBarrierNV ;
 scalar_t__ _funcptr_glBlendParameteriNV ;

__attribute__((used)) static int LoadExt_NV_blend_equation_advanced()
{
 int numFailed = 0;
 _funcptr_glBlendBarrierNV = (PFNGLBLENDBARRIERNVPROC)IntGetProcAddress("glBlendBarrierNV");
 if(!_funcptr_glBlendBarrierNV) ++numFailed;
 _funcptr_glBlendParameteriNV = (PFNGLBLENDPARAMETERINVPROC)IntGetProcAddress("glBlendParameteriNV");
 if(!_funcptr_glBlendParameteriNV) ++numFailed;
 return numFailed;
}
