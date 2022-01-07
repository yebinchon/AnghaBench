
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLHINTPGIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glHintPGI ;

__attribute__((used)) static int LoadExt_PGI_misc_hints()
{
 int numFailed = 0;
 _funcptr_glHintPGI = (PFNGLHINTPGIPROC)IntGetProcAddress("glHintPGI");
 if(!_funcptr_glHintPGI) ++numFailed;
 return numFailed;
}
