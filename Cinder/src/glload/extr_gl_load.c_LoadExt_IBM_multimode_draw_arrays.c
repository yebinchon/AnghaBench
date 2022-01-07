
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMULTIMODEDRAWELEMENTSIBMPROC ;
typedef scalar_t__ PFNGLMULTIMODEDRAWARRAYSIBMPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glMultiModeDrawArraysIBM ;
 scalar_t__ _funcptr_glMultiModeDrawElementsIBM ;

__attribute__((used)) static int LoadExt_IBM_multimode_draw_arrays()
{
 int numFailed = 0;
 _funcptr_glMultiModeDrawArraysIBM = (PFNGLMULTIMODEDRAWARRAYSIBMPROC)IntGetProcAddress("glMultiModeDrawArraysIBM");
 if(!_funcptr_glMultiModeDrawArraysIBM) ++numFailed;
 _funcptr_glMultiModeDrawElementsIBM = (PFNGLMULTIMODEDRAWELEMENTSIBMPROC)IntGetProcAddress("glMultiModeDrawElementsIBM");
 if(!_funcptr_glMultiModeDrawElementsIBM) ++numFailed;
 return numFailed;
}
