
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTURESTORAGESPARSEAMDPROC ;
typedef scalar_t__ PFNGLTEXSTORAGESPARSEAMDPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTexStorageSparseAMD ;
 scalar_t__ _funcptr_glTextureStorageSparseAMD ;

__attribute__((used)) static int LoadExt_AMD_sparse_texture()
{
 int numFailed = 0;
 _funcptr_glTexStorageSparseAMD = (PFNGLTEXSTORAGESPARSEAMDPROC)IntGetProcAddress("glTexStorageSparseAMD");
 if(!_funcptr_glTexStorageSparseAMD) ++numFailed;
 _funcptr_glTextureStorageSparseAMD = (PFNGLTEXTURESTORAGESPARSEAMDPROC)IntGetProcAddress("glTextureStorageSparseAMD");
 if(!_funcptr_glTextureStorageSparseAMD) ++numFailed;
 return numFailed;
}
