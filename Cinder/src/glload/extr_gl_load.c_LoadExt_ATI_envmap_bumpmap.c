
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXBUMPPARAMETERIVATIPROC ;
typedef scalar_t__ PFNGLTEXBUMPPARAMETERFVATIPROC ;
typedef scalar_t__ PFNGLGETTEXBUMPPARAMETERIVATIPROC ;
typedef scalar_t__ PFNGLGETTEXBUMPPARAMETERFVATIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetTexBumpParameterfvATI ;
 scalar_t__ _funcptr_glGetTexBumpParameterivATI ;
 scalar_t__ _funcptr_glTexBumpParameterfvATI ;
 scalar_t__ _funcptr_glTexBumpParameterivATI ;

__attribute__((used)) static int LoadExt_ATI_envmap_bumpmap()
{
 int numFailed = 0;
 _funcptr_glGetTexBumpParameterfvATI = (PFNGLGETTEXBUMPPARAMETERFVATIPROC)IntGetProcAddress("glGetTexBumpParameterfvATI");
 if(!_funcptr_glGetTexBumpParameterfvATI) ++numFailed;
 _funcptr_glGetTexBumpParameterivATI = (PFNGLGETTEXBUMPPARAMETERIVATIPROC)IntGetProcAddress("glGetTexBumpParameterivATI");
 if(!_funcptr_glGetTexBumpParameterivATI) ++numFailed;
 _funcptr_glTexBumpParameterfvATI = (PFNGLTEXBUMPPARAMETERFVATIPROC)IntGetProcAddress("glTexBumpParameterfvATI");
 if(!_funcptr_glTexBumpParameterfvATI) ++numFailed;
 _funcptr_glTexBumpParameterivATI = (PFNGLTEXBUMPPARAMETERIVATIPROC)IntGetProcAddress("glTexBumpParameterivATI");
 if(!_funcptr_glTexBumpParameterivATI) ++numFailed;
 return numFailed;
}
