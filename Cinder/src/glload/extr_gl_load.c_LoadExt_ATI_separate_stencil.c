
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSTENCILOPSEPARATEATIPROC ;
typedef scalar_t__ PFNGLSTENCILFUNCSEPARATEATIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glStencilFuncSeparateATI ;
 scalar_t__ _funcptr_glStencilOpSeparateATI ;

__attribute__((used)) static int LoadExt_ATI_separate_stencil()
{
 int numFailed = 0;
 _funcptr_glStencilFuncSeparateATI = (PFNGLSTENCILFUNCSEPARATEATIPROC)IntGetProcAddress("glStencilFuncSeparateATI");
 if(!_funcptr_glStencilFuncSeparateATI) ++numFailed;
 _funcptr_glStencilOpSeparateATI = (PFNGLSTENCILOPSEPARATEATIPROC)IntGetProcAddress("glStencilOpSeparateATI");
 if(!_funcptr_glStencilOpSeparateATI) ++numFailed;
 return numFailed;
}
