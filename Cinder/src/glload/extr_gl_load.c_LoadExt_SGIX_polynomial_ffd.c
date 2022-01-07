
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC ;
typedef scalar_t__ PFNGLDEFORMSGIXPROC ;
typedef scalar_t__ PFNGLDEFORMATIONMAP3FSGIXPROC ;
typedef scalar_t__ PFNGLDEFORMATIONMAP3DSGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDeformSGIX ;
 scalar_t__ _funcptr_glDeformationMap3dSGIX ;
 scalar_t__ _funcptr_glDeformationMap3fSGIX ;
 scalar_t__ _funcptr_glLoadIdentityDeformationMapSGIX ;

__attribute__((used)) static int LoadExt_SGIX_polynomial_ffd()
{
 int numFailed = 0;
 _funcptr_glDeformSGIX = (PFNGLDEFORMSGIXPROC)IntGetProcAddress("glDeformSGIX");
 if(!_funcptr_glDeformSGIX) ++numFailed;
 _funcptr_glDeformationMap3dSGIX = (PFNGLDEFORMATIONMAP3DSGIXPROC)IntGetProcAddress("glDeformationMap3dSGIX");
 if(!_funcptr_glDeformationMap3dSGIX) ++numFailed;
 _funcptr_glDeformationMap3fSGIX = (PFNGLDEFORMATIONMAP3FSGIXPROC)IntGetProcAddress("glDeformationMap3fSGIX");
 if(!_funcptr_glDeformationMap3fSGIX) ++numFailed;
 _funcptr_glLoadIdentityDeformationMapSGIX = (PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC)IntGetProcAddress("glLoadIdentityDeformationMapSGIX");
 if(!_funcptr_glLoadIdentityDeformationMapSGIX) ++numFailed;
 return numFailed;
}
