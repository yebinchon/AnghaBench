
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC ;
typedef scalar_t__ PFNGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetProgramSubroutineParameteruivNV ;
 scalar_t__ _funcptr_glProgramSubroutineParametersuivNV ;

__attribute__((used)) static int LoadExt_NV_gpu_program5()
{
 int numFailed = 0;
 _funcptr_glGetProgramSubroutineParameteruivNV = (PFNGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC)IntGetProcAddress("glGetProgramSubroutineParameteruivNV");
 if(!_funcptr_glGetProgramSubroutineParameteruivNV) ++numFailed;
 _funcptr_glProgramSubroutineParametersuivNV = (PFNGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC)IntGetProcAddress("glProgramSubroutineParametersuivNV");
 if(!_funcptr_glProgramSubroutineParametersuivNV) ++numFailed;
 return numFailed;
}
