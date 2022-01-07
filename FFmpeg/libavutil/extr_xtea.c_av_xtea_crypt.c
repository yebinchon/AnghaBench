
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVXTEA ;


 int xtea_crypt (int *,int *,int const*,int,int *,int,int ) ;
 int xtea_crypt_ecb ;

void av_xtea_crypt(AVXTEA *ctx, uint8_t *dst, const uint8_t *src, int count,
                   uint8_t *iv, int decrypt)
{
    xtea_crypt(ctx, dst, src, count, iv, decrypt, xtea_crypt_ecb);
}
