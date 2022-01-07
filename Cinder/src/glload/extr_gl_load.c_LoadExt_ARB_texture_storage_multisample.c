
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXSTORAGE3DMULTISAMPLEPROC ;
typedef scalar_t__ PFNGLTEXSTORAGE2DMULTISAMPLEPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTexStorage2DMultisample ;
 scalar_t__ _funcptr_glTexStorage3DMultisample ;

__attribute__((used)) static int LoadExt_ARB_texture_storage_multisample()
{
 int numFailed = 0;
 _funcptr_glTexStorage2DMultisample = (PFNGLTEXSTORAGE2DMULTISAMPLEPROC)IntGetProcAddress("glTexStorage2DMultisample");
 if(!_funcptr_glTexStorage2DMultisample) ++numFailed;
 _funcptr_glTexStorage3DMultisample = (PFNGLTEXSTORAGE3DMULTISAMPLEPROC)IntGetProcAddress("glTexStorage3DMultisample");
 if(!_funcptr_glTexStorage3DMultisample) ++numFailed;
 return numFailed;
}
