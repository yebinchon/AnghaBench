
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPOINTPARAMETERIVNVPROC ;
typedef scalar_t__ PFNGLPOINTPARAMETERINVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glPointParameteriNV ;
 scalar_t__ _funcptr_glPointParameterivNV ;

__attribute__((used)) static int LoadExt_NV_point_sprite()
{
 int numFailed = 0;
 _funcptr_glPointParameteriNV = (PFNGLPOINTPARAMETERINVPROC)IntGetProcAddress("glPointParameteriNV");
 if(!_funcptr_glPointParameteriNV) ++numFailed;
 _funcptr_glPointParameterivNV = (PFNGLPOINTPARAMETERIVNVPROC)IntGetProcAddress("glPointParameterivNV");
 if(!_funcptr_glPointParameterivNV) ++numFailed;
 return numFailed;
}
