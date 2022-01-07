
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWMESHARRAYSSUNPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawMeshArraysSUN ;

__attribute__((used)) static int LoadExt_SUN_mesh_array()
{
 int numFailed = 0;
 _funcptr_glDrawMeshArraysSUN = (PFNGLDRAWMESHARRAYSSUNPROC)IntGetProcAddress("glDrawMeshArraysSUN");
 if(!_funcptr_glDrawMeshArraysSUN) ++numFailed;
 return numFailed;
}
