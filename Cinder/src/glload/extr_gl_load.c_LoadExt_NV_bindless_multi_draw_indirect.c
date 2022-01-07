
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC ;
typedef scalar_t__ PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glMultiDrawArraysIndirectBindlessNV ;
 scalar_t__ _funcptr_glMultiDrawElementsIndirectBindlessNV ;

__attribute__((used)) static int LoadExt_NV_bindless_multi_draw_indirect()
{
 int numFailed = 0;
 _funcptr_glMultiDrawArraysIndirectBindlessNV = (PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC)IntGetProcAddress("glMultiDrawArraysIndirectBindlessNV");
 if(!_funcptr_glMultiDrawArraysIndirectBindlessNV) ++numFailed;
 _funcptr_glMultiDrawElementsIndirectBindlessNV = (PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC)IntGetProcAddress("glMultiDrawElementsIndirectBindlessNV");
 if(!_funcptr_glMultiDrawElementsIndirectBindlessNV) ++numFailed;
 return numFailed;
}
