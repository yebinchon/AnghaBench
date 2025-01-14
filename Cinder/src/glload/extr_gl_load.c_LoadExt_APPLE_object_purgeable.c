
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLOBJECTUNPURGEABLEAPPLEPROC ;
typedef scalar_t__ PFNGLOBJECTPURGEABLEAPPLEPROC ;
typedef scalar_t__ PFNGLGETOBJECTPARAMETERIVAPPLEPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetObjectParameterivAPPLE ;
 scalar_t__ _funcptr_glObjectPurgeableAPPLE ;
 scalar_t__ _funcptr_glObjectUnpurgeableAPPLE ;

__attribute__((used)) static int LoadExt_APPLE_object_purgeable()
{
 int numFailed = 0;
 _funcptr_glGetObjectParameterivAPPLE = (PFNGLGETOBJECTPARAMETERIVAPPLEPROC)IntGetProcAddress("glGetObjectParameterivAPPLE");
 if(!_funcptr_glGetObjectParameterivAPPLE) ++numFailed;
 _funcptr_glObjectPurgeableAPPLE = (PFNGLOBJECTPURGEABLEAPPLEPROC)IntGetProcAddress("glObjectPurgeableAPPLE");
 if(!_funcptr_glObjectPurgeableAPPLE) ++numFailed;
 _funcptr_glObjectUnpurgeableAPPLE = (PFNGLOBJECTUNPURGEABLEAPPLEPROC)IntGetProcAddress("glObjectUnpurgeableAPPLE");
 if(!_funcptr_glObjectUnpurgeableAPPLE) ++numFailed;
 return numFailed;
}
