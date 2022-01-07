
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWELEMENTSINSTANCEDEXTPROC ;
typedef scalar_t__ PFNGLDRAWARRAYSINSTANCEDEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawArraysInstancedEXT ;
 scalar_t__ _funcptr_glDrawElementsInstancedEXT ;

__attribute__((used)) static int LoadExt_EXT_draw_instanced()
{
 int numFailed = 0;
 _funcptr_glDrawArraysInstancedEXT = (PFNGLDRAWARRAYSINSTANCEDEXTPROC)IntGetProcAddress("glDrawArraysInstancedEXT");
 if(!_funcptr_glDrawArraysInstancedEXT) ++numFailed;
 _funcptr_glDrawElementsInstancedEXT = (PFNGLDRAWELEMENTSINSTANCEDEXTPROC)IntGetProcAddress("glDrawElementsInstancedEXT");
 if(!_funcptr_glDrawElementsInstancedEXT) ++numFailed;
 return numFailed;
}
