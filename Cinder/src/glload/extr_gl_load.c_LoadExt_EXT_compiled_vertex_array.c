
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLUNLOCKARRAYSEXTPROC ;
typedef scalar_t__ PFNGLLOCKARRAYSEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glLockArraysEXT ;
 scalar_t__ _funcptr_glUnlockArraysEXT ;

__attribute__((used)) static int LoadExt_EXT_compiled_vertex_array()
{
 int numFailed = 0;
 _funcptr_glLockArraysEXT = (PFNGLLOCKARRAYSEXTPROC)IntGetProcAddress("glLockArraysEXT");
 if(!_funcptr_glLockArraysEXT) ++numFailed;
 _funcptr_glUnlockArraysEXT = (PFNGLUNLOCKARRAYSEXTPROC)IntGetProcAddress("glUnlockArraysEXT");
 if(!_funcptr_glUnlockArraysEXT) ++numFailed;
 return numFailed;
}
