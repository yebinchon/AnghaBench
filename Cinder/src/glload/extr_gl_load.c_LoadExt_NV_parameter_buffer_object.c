
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC ;
typedef scalar_t__ PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC ;
typedef scalar_t__ PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glProgramBufferParametersIivNV ;
 scalar_t__ _funcptr_glProgramBufferParametersIuivNV ;
 scalar_t__ _funcptr_glProgramBufferParametersfvNV ;

__attribute__((used)) static int LoadExt_NV_parameter_buffer_object()
{
 int numFailed = 0;
 _funcptr_glProgramBufferParametersIivNV = (PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC)IntGetProcAddress("glProgramBufferParametersIivNV");
 if(!_funcptr_glProgramBufferParametersIivNV) ++numFailed;
 _funcptr_glProgramBufferParametersIuivNV = (PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC)IntGetProcAddress("glProgramBufferParametersIuivNV");
 if(!_funcptr_glProgramBufferParametersIuivNV) ++numFailed;
 _funcptr_glProgramBufferParametersfvNV = (PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC)IntGetProcAddress("glProgramBufferParametersfvNV");
 if(!_funcptr_glProgramBufferParametersfvNV) ++numFailed;
 return numFailed;
}
