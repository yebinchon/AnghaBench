
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVAESCTR {scalar_t__ block_offset; scalar_t__ counter; } ;


 scalar_t__ AES_CTR_IV_SIZE ;
 int av_aes_ctr_increment_be64 (scalar_t__) ;
 int memset (scalar_t__,int ,scalar_t__) ;

void av_aes_ctr_increment_iv(struct AVAESCTR *a)
{
    av_aes_ctr_increment_be64(a->counter);
    memset(a->counter + AES_CTR_IV_SIZE, 0, sizeof(a->counter) - AES_CTR_IV_SIZE);
    a->block_offset = 0;
}
