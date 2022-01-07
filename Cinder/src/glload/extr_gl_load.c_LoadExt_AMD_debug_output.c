
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETDEBUGMESSAGELOGAMDPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGEINSERTAMDPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGEENABLEAMDPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGECALLBACKAMDPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDebugMessageCallbackAMD ;
 scalar_t__ _funcptr_glDebugMessageEnableAMD ;
 scalar_t__ _funcptr_glDebugMessageInsertAMD ;
 scalar_t__ _funcptr_glGetDebugMessageLogAMD ;

__attribute__((used)) static int LoadExt_AMD_debug_output()
{
 int numFailed = 0;
 _funcptr_glDebugMessageCallbackAMD = (PFNGLDEBUGMESSAGECALLBACKAMDPROC)IntGetProcAddress("glDebugMessageCallbackAMD");
 if(!_funcptr_glDebugMessageCallbackAMD) ++numFailed;
 _funcptr_glDebugMessageEnableAMD = (PFNGLDEBUGMESSAGEENABLEAMDPROC)IntGetProcAddress("glDebugMessageEnableAMD");
 if(!_funcptr_glDebugMessageEnableAMD) ++numFailed;
 _funcptr_glDebugMessageInsertAMD = (PFNGLDEBUGMESSAGEINSERTAMDPROC)IntGetProcAddress("glDebugMessageInsertAMD");
 if(!_funcptr_glDebugMessageInsertAMD) ++numFailed;
 _funcptr_glGetDebugMessageLogAMD = (PFNGLGETDEBUGMESSAGELOGAMDPROC)IntGetProcAddress("glGetDebugMessageLogAMD");
 if(!_funcptr_glGetDebugMessageLogAMD) ++numFailed;
 return numFailed;
}
