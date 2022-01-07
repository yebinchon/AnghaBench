
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTESSELLATIONMODEAMDPROC ;
typedef scalar_t__ PFNGLTESSELLATIONFACTORAMDPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTessellationFactorAMD ;
 scalar_t__ _funcptr_glTessellationModeAMD ;

__attribute__((used)) static int LoadExt_AMD_vertex_shader_tessellator()
{
 int numFailed = 0;
 _funcptr_glTessellationFactorAMD = (PFNGLTESSELLATIONFACTORAMDPROC)IntGetProcAddress("glTessellationFactorAMD");
 if(!_funcptr_glTessellationFactorAMD) ++numFailed;
 _funcptr_glTessellationModeAMD = (PFNGLTESSELLATIONMODEAMDPROC)IntGetProcAddress("glTessellationModeAMD");
 if(!_funcptr_glTessellationModeAMD) ++numFailed;
 return numFailed;
}
