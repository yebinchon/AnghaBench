
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccmode_cbc {int dummy; } ;
typedef int cccbc_iv ;
typedef int cccbc_ctx ;
struct TYPE_2__ {size_t (* ccpad_cts3_decrypt_fn ) (struct ccmode_cbc const*,int *,int *,size_t,void const*,void*) ;} ;


 TYPE_1__* g_crypto_funcs ;
 size_t stub1 (struct ccmode_cbc const*,int *,int *,size_t,void const*,void*) ;

size_t
ccpad_cts3_decrypt(const struct ccmode_cbc *cbc, cccbc_ctx *cbc_key,
     cccbc_iv *iv, size_t nbytes, const void *in, void *out)
{
 if (g_crypto_funcs)
  return (*g_crypto_funcs->ccpad_cts3_decrypt_fn)(cbc, cbc_key, iv, nbytes, in, out);
 return (0);
}
