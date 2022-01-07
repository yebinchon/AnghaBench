
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVAESCTR {scalar_t__ block_offset; int counter; } ;


 int memcpy (int ,int const*,int) ;

void av_aes_ctr_set_full_iv(struct AVAESCTR *a, const uint8_t* iv)
{
    memcpy(a->counter, iv, sizeof(a->counter));
    a->block_offset = 0;
}
