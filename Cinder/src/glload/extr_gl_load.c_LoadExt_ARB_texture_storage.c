
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXSTORAGE3DPROC ;
typedef scalar_t__ PFNGLTEXSTORAGE2DPROC ;
typedef scalar_t__ PFNGLTEXSTORAGE1DPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTexStorage1D ;
 scalar_t__ _funcptr_glTexStorage2D ;
 scalar_t__ _funcptr_glTexStorage3D ;

__attribute__((used)) static int LoadExt_ARB_texture_storage()
{
 int numFailed = 0;
 _funcptr_glTexStorage1D = (PFNGLTEXSTORAGE1DPROC)IntGetProcAddress("glTexStorage1D");
 if(!_funcptr_glTexStorage1D) ++numFailed;
 _funcptr_glTexStorage2D = (PFNGLTEXSTORAGE2DPROC)IntGetProcAddress("glTexStorage2D");
 if(!_funcptr_glTexStorage2D) ++numFailed;
 _funcptr_glTexStorage3D = (PFNGLTEXSTORAGE3DPROC)IntGetProcAddress("glTexStorage3D");
 if(!_funcptr_glTexStorage3D) ++numFailed;
 return numFailed;
}
