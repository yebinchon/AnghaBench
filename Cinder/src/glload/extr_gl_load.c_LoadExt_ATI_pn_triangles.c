
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPNTRIANGLESIATIPROC ;
typedef scalar_t__ PFNGLPNTRIANGLESFATIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glPNTrianglesfATI ;
 scalar_t__ _funcptr_glPNTrianglesiATI ;

__attribute__((used)) static int LoadExt_ATI_pn_triangles()
{
 int numFailed = 0;
 _funcptr_glPNTrianglesfATI = (PFNGLPNTRIANGLESFATIPROC)IntGetProcAddress("glPNTrianglesfATI");
 if(!_funcptr_glPNTrianglesfATI) ++numFailed;
 _funcptr_glPNTrianglesiATI = (PFNGLPNTRIANGLESIATIPROC)IntGetProcAddress("glPNTrianglesiATI");
 if(!_funcptr_glPNTrianglesiATI) ++numFailed;
 return numFailed;
}
