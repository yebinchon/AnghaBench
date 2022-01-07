
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSETMULTISAMPLEFVAMDPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glSetMultisamplefvAMD ;

__attribute__((used)) static int LoadExt_AMD_sample_positions()
{
 int numFailed = 0;
 _funcptr_glSetMultisamplefvAMD = (PFNGLSETMULTISAMPLEFVAMDPROC)IntGetProcAddress("glSetMultisamplefvAMD");
 if(!_funcptr_glSetMultisamplefvAMD) ++numFailed;
 return numFailed;
}
