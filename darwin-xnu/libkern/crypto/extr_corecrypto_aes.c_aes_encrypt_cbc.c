
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ccmode_cbc {int block_size; } ;
typedef int aes_rval ;
struct TYPE_4__ {int ctx; } ;
typedef TYPE_1__ aes_encrypt_ctx ;
struct TYPE_5__ {struct ccmode_cbc* ccaes_cbc_encrypt; } ;


 int aes_good ;
 int cccbc_iv_decl (int ,int ) ;
 int cccbc_set_iv (struct ccmode_cbc const*,int ,unsigned char const*) ;
 int cccbc_update (struct ccmode_cbc const*,int ,int ,unsigned int,unsigned char const*,unsigned char*) ;
 int ctx_iv ;
 TYPE_2__* g_crypto_funcs ;

aes_rval aes_encrypt_cbc(const unsigned char *in_blk, const unsigned char *in_iv, unsigned int num_blk,
      unsigned char *out_blk, aes_encrypt_ctx cx[1])
{
 const struct ccmode_cbc *cbc = g_crypto_funcs->ccaes_cbc_encrypt;
 cccbc_iv_decl(cbc->block_size, ctx_iv);

 cccbc_set_iv(cbc, ctx_iv, in_iv);
 cccbc_update(cbc, cx[0].ctx, ctx_iv, num_blk, in_blk, out_blk);

 return aes_good;
}
