
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWELEMENTSINDIRECTPROC ;
typedef scalar_t__ PFNGLDRAWARRAYSINDIRECTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawArraysIndirect ;
 scalar_t__ _funcptr_glDrawElementsIndirect ;

__attribute__((used)) static int LoadExt_ARB_draw_indirect()
{
 int numFailed = 0;
 _funcptr_glDrawArraysIndirect = (PFNGLDRAWARRAYSINDIRECTPROC)IntGetProcAddress("glDrawArraysIndirect");
 if(!_funcptr_glDrawArraysIndirect) ++numFailed;
 _funcptr_glDrawElementsIndirect = (PFNGLDRAWELEMENTSINDIRECTPROC)IntGetProcAddress("glDrawElementsIndirect");
 if(!_funcptr_glDrawElementsIndirect) ++numFailed;
 return numFailed;
}
