
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVAESCTR {scalar_t__ block_offset; scalar_t__ counter; } ;


 scalar_t__ AES_CTR_IV_SIZE ;
 int memcpy (scalar_t__,int const*,scalar_t__) ;
 int memset (scalar_t__,int ,scalar_t__) ;

void av_aes_ctr_set_iv(struct AVAESCTR *a, const uint8_t* iv)
{
    memcpy(a->counter, iv, AES_CTR_IV_SIZE);
    memset(a->counter + AES_CTR_IV_SIZE, 0, sizeof(a->counter) - AES_CTR_IV_SIZE);
    a->block_offset = 0;
}
