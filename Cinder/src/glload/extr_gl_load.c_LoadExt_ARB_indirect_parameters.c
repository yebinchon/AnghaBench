
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTARBPROC ;
typedef scalar_t__ PFNGLMULTIDRAWARRAYSINDIRECTCOUNTARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glMultiDrawArraysIndirectCountARB ;
 scalar_t__ _funcptr_glMultiDrawElementsIndirectCountARB ;

__attribute__((used)) static int LoadExt_ARB_indirect_parameters()
{
 int numFailed = 0;
 _funcptr_glMultiDrawArraysIndirectCountARB = (PFNGLMULTIDRAWARRAYSINDIRECTCOUNTARBPROC)IntGetProcAddress("glMultiDrawArraysIndirectCountARB");
 if(!_funcptr_glMultiDrawArraysIndirectCountARB) ++numFailed;
 _funcptr_glMultiDrawElementsIndirectCountARB = (PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTARBPROC)IntGetProcAddress("glMultiDrawElementsIndirectCountARB");
 if(!_funcptr_glMultiDrawElementsIndirectCountARB) ++numFailed;
 return numFailed;
}
