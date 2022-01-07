
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXMAKECURRENTREADSGIPROC ;
typedef scalar_t__ PFNGLXGETCURRENTREADDRAWABLESGIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXGetCurrentReadDrawableSGI ;
 scalar_t__ _funcptr_glXMakeCurrentReadSGI ;

__attribute__((used)) static int LoadExt_SGI_make_current_read()
{
 int numFailed = 0;
 _funcptr_glXGetCurrentReadDrawableSGI = (PFNGLXGETCURRENTREADDRAWABLESGIPROC)IntGetProcAddress("glXGetCurrentReadDrawableSGI");
 if(!_funcptr_glXGetCurrentReadDrawableSGI) ++numFailed;
 _funcptr_glXMakeCurrentReadSGI = (PFNGLXMAKECURRENTREADSGIPROC)IntGetProcAddress("glXMakeCurrentReadSGI");
 if(!_funcptr_glXMakeCurrentReadSGI) ++numFailed;
 return numFailed;
}
