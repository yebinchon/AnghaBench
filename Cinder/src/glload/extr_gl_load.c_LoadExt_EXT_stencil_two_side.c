
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLACTIVESTENCILFACEEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glActiveStencilFaceEXT ;

__attribute__((used)) static int LoadExt_EXT_stencil_two_side()
{
 int numFailed = 0;
 _funcptr_glActiveStencilFaceEXT = (PFNGLACTIVESTENCILFACEEXTPROC)IntGetProcAddress("glActiveStencilFaceEXT");
 if(!_funcptr_glActiveStencilFaceEXT) ++numFailed;
 return numFailed;
}
