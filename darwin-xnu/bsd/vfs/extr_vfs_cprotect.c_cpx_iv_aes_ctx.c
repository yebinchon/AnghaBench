
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cpx {int cpx_iv_aes_ctx; int cpx_flags; int cpx_key_len; int cpx_cached_key; } ;
typedef int aes_encrypt_ctx ;
typedef int SHA1_CTX ;


 int CPX_IV_AES_CTX_INITIALIZED ;
 int CPX_IV_AES_CTX_VFS ;
 scalar_t__ ISSET (int ,int ) ;
 int SET (int ,int ) ;
 int SHA1Final (int *,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,int ,int ) ;
 int SHA_DIGEST_LENGTH ;
 int cpx_set_aes_iv_key (struct cpx*,int *) ;

aes_encrypt_ctx *cpx_iv_aes_ctx(struct cpx *cpx)
{
 if (ISSET(cpx->cpx_flags, CPX_IV_AES_CTX_INITIALIZED))
 return &cpx->cpx_iv_aes_ctx;

 SHA1_CTX sha1ctxt;
 uint8_t digest[SHA_DIGEST_LENGTH];


 SHA1Init(&sha1ctxt);





 SHA1Update(&sha1ctxt, cpx->cpx_cached_key, cpx->cpx_key_len);
 SHA1Final(digest, &sha1ctxt);

 cpx_set_aes_iv_key(cpx, digest);
 SET(cpx->cpx_flags, CPX_IV_AES_CTX_VFS);

 return &cpx->cpx_iv_aes_ctx;
}
