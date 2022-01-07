
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSTENCILOPVALUEAMDPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glStencilOpValueAMD ;

__attribute__((used)) static int LoadExt_AMD_stencil_operation_extended()
{
 int numFailed = 0;
 _funcptr_glStencilOpValueAMD = (PFNGLSTENCILOPVALUEAMDPROC)IntGetProcAddress("glStencilOpValueAMD");
 if(!_funcptr_glStencilOpValueAMD) ++numFailed;
 return numFailed;
}
