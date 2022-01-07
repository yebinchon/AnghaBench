
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx {int cpx_flags; int cpx_iv_aes_ctx; } ;


 int CLR (int ,int ) ;
 int CPX_IV_AES_CTX_INITIALIZED ;
 int CPX_IV_AES_CTX_VFS ;
 int CPX_USE_OFFSET_FOR_IV ;
 int SET (int ,int) ;
 int aes_encrypt_key128 (void*,int *) ;

void cpx_set_aes_iv_key(struct cpx *cpx, void *iv_key)
{
 aes_encrypt_key128(iv_key, &cpx->cpx_iv_aes_ctx);
 SET(cpx->cpx_flags, CPX_IV_AES_CTX_INITIALIZED | CPX_USE_OFFSET_FOR_IV);
 CLR(cpx->cpx_flags, CPX_IV_AES_CTX_VFS);
}
