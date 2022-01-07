
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMULTIDRAWELEMENTSEXTPROC ;
typedef scalar_t__ PFNGLMULTIDRAWARRAYSEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glMultiDrawArraysEXT ;
 scalar_t__ _funcptr_glMultiDrawElementsEXT ;

__attribute__((used)) static int LoadExt_EXT_multi_draw_arrays()
{
 int numFailed = 0;
 _funcptr_glMultiDrawArraysEXT = (PFNGLMULTIDRAWARRAYSEXTPROC)IntGetProcAddress("glMultiDrawArraysEXT");
 if(!_funcptr_glMultiDrawArraysEXT) ++numFailed;
 _funcptr_glMultiDrawElementsEXT = (PFNGLMULTIDRAWELEMENTSEXTPROC)IntGetProcAddress("glMultiDrawElementsEXT");
 if(!_funcptr_glMultiDrawElementsEXT) ++numFailed;
 return numFailed;
}
