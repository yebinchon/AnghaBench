
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETQUERYOBJECTUI64VEXTPROC ;
typedef scalar_t__ PFNGLGETQUERYOBJECTI64VEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetQueryObjecti64vEXT ;
 scalar_t__ _funcptr_glGetQueryObjectui64vEXT ;

__attribute__((used)) static int LoadExt_EXT_timer_query()
{
 int numFailed = 0;
 _funcptr_glGetQueryObjecti64vEXT = (PFNGLGETQUERYOBJECTI64VEXTPROC)IntGetProcAddress("glGetQueryObjecti64vEXT");
 if(!_funcptr_glGetQueryObjecti64vEXT) ++numFailed;
 _funcptr_glGetQueryObjectui64vEXT = (PFNGLGETQUERYOBJECTUI64VEXTPROC)IntGetProcAddress("glGetQueryObjectui64vEXT");
 if(!_funcptr_glGetQueryObjectui64vEXT) ++numFailed;
 return numFailed;
}
