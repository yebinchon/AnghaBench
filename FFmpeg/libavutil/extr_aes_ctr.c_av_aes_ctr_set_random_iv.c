
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct AVAESCTR {int dummy; } ;


 int av_aes_ctr_set_iv (struct AVAESCTR*,int *) ;
 int av_get_random_seed () ;

void av_aes_ctr_set_random_iv(struct AVAESCTR *a)
{
    uint32_t iv[2];

    iv[0] = av_get_random_seed();
    iv[1] = av_get_random_seed();

    av_aes_ctr_set_iv(a, (uint8_t*)iv);
}
