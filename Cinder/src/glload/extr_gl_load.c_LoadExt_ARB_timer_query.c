
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLQUERYCOUNTERPROC ;
typedef scalar_t__ PFNGLGETQUERYOBJECTUI64VPROC ;
typedef scalar_t__ PFNGLGETQUERYOBJECTI64VPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetQueryObjecti64v ;
 scalar_t__ _funcptr_glGetQueryObjectui64v ;
 scalar_t__ _funcptr_glQueryCounter ;

__attribute__((used)) static int LoadExt_ARB_timer_query()
{
 int numFailed = 0;
 _funcptr_glGetQueryObjecti64v = (PFNGLGETQUERYOBJECTI64VPROC)IntGetProcAddress("glGetQueryObjecti64v");
 if(!_funcptr_glGetQueryObjecti64v) ++numFailed;
 _funcptr_glGetQueryObjectui64v = (PFNGLGETQUERYOBJECTUI64VPROC)IntGetProcAddress("glGetQueryObjectui64v");
 if(!_funcptr_glGetQueryObjectui64v) ++numFailed;
 _funcptr_glQueryCounter = (PFNGLQUERYCOUNTERPROC)IntGetProcAddress("glQueryCounter");
 if(!_funcptr_glQueryCounter) ++numFailed;
 return numFailed;
}
