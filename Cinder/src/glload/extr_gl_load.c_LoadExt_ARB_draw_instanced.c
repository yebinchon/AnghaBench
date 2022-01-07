
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWELEMENTSINSTANCEDARBPROC ;
typedef scalar_t__ PFNGLDRAWARRAYSINSTANCEDARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawArraysInstancedARB ;
 scalar_t__ _funcptr_glDrawElementsInstancedARB ;

__attribute__((used)) static int LoadExt_ARB_draw_instanced()
{
 int numFailed = 0;
 _funcptr_glDrawArraysInstancedARB = (PFNGLDRAWARRAYSINSTANCEDARBPROC)IntGetProcAddress("glDrawArraysInstancedARB");
 if(!_funcptr_glDrawArraysInstancedARB) ++numFailed;
 _funcptr_glDrawElementsInstancedARB = (PFNGLDRAWELEMENTSINSTANCEDARBPROC)IntGetProcAddress("glDrawElementsInstancedARB");
 if(!_funcptr_glDrawElementsInstancedARB) ++numFailed;
 return numFailed;
}
