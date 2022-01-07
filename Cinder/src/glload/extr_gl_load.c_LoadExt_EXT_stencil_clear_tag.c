
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSTENCILCLEARTAGEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glStencilClearTagEXT ;

__attribute__((used)) static int LoadExt_EXT_stencil_clear_tag()
{
 int numFailed = 0;
 _funcptr_glStencilClearTagEXT = (PFNGLSTENCILCLEARTAGEXTPROC)IntGetProcAddress("glStencilClearTagEXT");
 if(!_funcptr_glStencilClearTagEXT) ++numFailed;
 return numFailed;
}
