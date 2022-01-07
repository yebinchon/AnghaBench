
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC ;
typedef scalar_t__ PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC ;
typedef scalar_t__ PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawArraysInstancedBaseInstance ;
 scalar_t__ _funcptr_glDrawElementsInstancedBaseInstance ;
 scalar_t__ _funcptr_glDrawElementsInstancedBaseVertexBaseInstance ;

__attribute__((used)) static int LoadExt_ARB_base_instance()
{
 int numFailed = 0;
 _funcptr_glDrawArraysInstancedBaseInstance = (PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC)IntGetProcAddress("glDrawArraysInstancedBaseInstance");
 if(!_funcptr_glDrawArraysInstancedBaseInstance) ++numFailed;
 _funcptr_glDrawElementsInstancedBaseInstance = (PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC)IntGetProcAddress("glDrawElementsInstancedBaseInstance");
 if(!_funcptr_glDrawElementsInstancedBaseInstance) ++numFailed;
 _funcptr_glDrawElementsInstancedBaseVertexBaseInstance = (PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC)IntGetProcAddress("glDrawElementsInstancedBaseVertexBaseInstance");
 if(!_funcptr_glDrawElementsInstancedBaseVertexBaseInstance) ++numFailed;
 return numFailed;
}
