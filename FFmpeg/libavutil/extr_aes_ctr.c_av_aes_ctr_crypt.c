
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVAESCTR {scalar_t__ block_offset; int * encrypted_counter; scalar_t__ counter; int aes; } ;


 int AES_BLOCK_SIZE ;
 int * FFMIN (int const*,int const*) ;
 int av_aes_crypt (int ,int *,scalar_t__,int,int *,int ) ;
 int av_aes_ctr_increment_be64 (scalar_t__) ;

void av_aes_ctr_crypt(struct AVAESCTR *a, uint8_t *dst, const uint8_t *src, int count)
{
    const uint8_t* src_end = src + count;
    const uint8_t* cur_end_pos;
    uint8_t* encrypted_counter_pos;

    while (src < src_end) {
        if (a->block_offset == 0) {
            av_aes_crypt(a->aes, a->encrypted_counter, a->counter, 1, ((void*)0), 0);

            av_aes_ctr_increment_be64(a->counter + 8);
        }

        encrypted_counter_pos = a->encrypted_counter + a->block_offset;
        cur_end_pos = src + AES_BLOCK_SIZE - a->block_offset;
        cur_end_pos = FFMIN(cur_end_pos, src_end);

        a->block_offset += cur_end_pos - src;
        a->block_offset &= (AES_BLOCK_SIZE - 1);

        while (src < cur_end_pos) {
            *dst++ = *src++ ^ *encrypted_counter_pos++;
        }
    }
}
