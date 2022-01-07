
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVDES ;


 int av_des_crypt_mac (int *,int *,int const*,int,int *,int,int ) ;

void av_des_crypt(AVDES *d, uint8_t *dst, const uint8_t *src,
                  int count, uint8_t *iv, int decrypt)
{
    av_des_crypt_mac(d, dst, src, count, iv, decrypt, 0);
}
