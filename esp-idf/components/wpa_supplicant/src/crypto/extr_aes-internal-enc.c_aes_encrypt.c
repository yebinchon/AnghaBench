
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 size_t AES_PRIV_NR_POS ;
 int rijndaelEncrypt (void*,int ,int const*,int *) ;

void aes_encrypt(void *ctx, const u8 *plain, u8 *crypt)
{
 u32 *rk = ctx;
 rijndaelEncrypt(ctx, rk[AES_PRIV_NR_POS], plain, crypt);
}
