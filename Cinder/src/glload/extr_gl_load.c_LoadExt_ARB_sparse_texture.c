
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXPAGECOMMITMENTARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTexPageCommitmentARB ;

__attribute__((used)) static int LoadExt_ARB_sparse_texture()
{
 int numFailed = 0;
 _funcptr_glTexPageCommitmentARB = (PFNGLTEXPAGECOMMITMENTARBPROC)IntGetProcAddress("glTexPageCommitmentARB");
 if(!_funcptr_glTexPageCommitmentARB) ++numFailed;
 return numFailed;
}
