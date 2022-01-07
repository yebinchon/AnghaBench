
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLISNAMEAMDPROC ;
typedef scalar_t__ PFNGLGENNAMESAMDPROC ;
typedef scalar_t__ PFNGLDELETENAMESAMDPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDeleteNamesAMD ;
 scalar_t__ _funcptr_glGenNamesAMD ;
 scalar_t__ _funcptr_glIsNameAMD ;

__attribute__((used)) static int LoadExt_AMD_name_gen_delete()
{
 int numFailed = 0;
 _funcptr_glDeleteNamesAMD = (PFNGLDELETENAMESAMDPROC)IntGetProcAddress("glDeleteNamesAMD");
 if(!_funcptr_glDeleteNamesAMD) ++numFailed;
 _funcptr_glGenNamesAMD = (PFNGLGENNAMESAMDPROC)IntGetProcAddress("glGenNamesAMD");
 if(!_funcptr_glGenNamesAMD) ++numFailed;
 _funcptr_glIsNameAMD = (PFNGLISNAMEAMDPROC)IntGetProcAddress("glIsNameAMD");
 if(!_funcptr_glIsNameAMD) ++numFailed;
 return numFailed;
}
