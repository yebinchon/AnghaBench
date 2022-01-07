
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLWAITSYNCPROC ;
typedef scalar_t__ PFNGLISSYNCPROC ;
typedef scalar_t__ PFNGLGETSYNCIVPROC ;
typedef scalar_t__ PFNGLGETINTEGER64VPROC ;
typedef scalar_t__ PFNGLFENCESYNCPROC ;
typedef scalar_t__ PFNGLDELETESYNCPROC ;
typedef scalar_t__ PFNGLCLIENTWAITSYNCPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glClientWaitSync ;
 scalar_t__ _funcptr_glDeleteSync ;
 scalar_t__ _funcptr_glFenceSync ;
 scalar_t__ _funcptr_glGetInteger64v ;
 scalar_t__ _funcptr_glGetSynciv ;
 scalar_t__ _funcptr_glIsSync ;
 scalar_t__ _funcptr_glWaitSync ;

__attribute__((used)) static int LoadExt_ARB_sync()
{
 int numFailed = 0;
 _funcptr_glClientWaitSync = (PFNGLCLIENTWAITSYNCPROC)IntGetProcAddress("glClientWaitSync");
 if(!_funcptr_glClientWaitSync) ++numFailed;
 _funcptr_glDeleteSync = (PFNGLDELETESYNCPROC)IntGetProcAddress("glDeleteSync");
 if(!_funcptr_glDeleteSync) ++numFailed;
 _funcptr_glFenceSync = (PFNGLFENCESYNCPROC)IntGetProcAddress("glFenceSync");
 if(!_funcptr_glFenceSync) ++numFailed;
 _funcptr_glGetInteger64v = (PFNGLGETINTEGER64VPROC)IntGetProcAddress("glGetInteger64v");
 if(!_funcptr_glGetInteger64v) ++numFailed;
 _funcptr_glGetSynciv = (PFNGLGETSYNCIVPROC)IntGetProcAddress("glGetSynciv");
 if(!_funcptr_glGetSynciv) ++numFailed;
 _funcptr_glIsSync = (PFNGLISSYNCPROC)IntGetProcAddress("glIsSync");
 if(!_funcptr_glIsSync) ++numFailed;
 _funcptr_glWaitSync = (PFNGLWAITSYNCPROC)IntGetProcAddress("glWaitSync");
 if(!_funcptr_glWaitSync) ++numFailed;
 return numFailed;
}
