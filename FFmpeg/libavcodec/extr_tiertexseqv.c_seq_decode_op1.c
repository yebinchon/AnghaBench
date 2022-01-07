
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int block ;
struct TYPE_5__ {TYPE_1__* frame; } ;
struct TYPE_4__ {int* linesize; } ;
typedef TYPE_2__ SeqVideoContext ;
typedef int GetBitContext ;


 int* ff_log2_tab ;
 size_t get_bits (int *,int) ;
 int init_get_bits (int *,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 unsigned char* seq_unpack_rle_block (unsigned char const*,unsigned char const*,unsigned char*,int) ;

__attribute__((used)) static const unsigned char *seq_decode_op1(SeqVideoContext *seq,
                                           const unsigned char *src,
                                           const unsigned char *src_end,
                                           unsigned char *dst)
{
    const unsigned char *color_table;
    int b, i, len, bits;
    GetBitContext gb;
    unsigned char block[8 * 8];

    if (src_end - src < 1)
        return ((void*)0);
    len = *src++;
    if (len & 0x80) {
        switch (len & 3) {
        case 1:
            src = seq_unpack_rle_block(src, src_end, block, sizeof(block));
            for (b = 0; b < 8; b++) {
                memcpy(dst, &block[b * 8], 8);
                dst += seq->frame->linesize[0];
            }
            break;
        case 2:
            src = seq_unpack_rle_block(src, src_end, block, sizeof(block));
            for (i = 0; i < 8; i++) {
                for (b = 0; b < 8; b++)
                    dst[b * seq->frame->linesize[0]] = block[i * 8 + b];
                ++dst;
            }
            break;
        }
    } else {
        if (len <= 0)
            return ((void*)0);
        bits = ff_log2_tab[len - 1] + 1;
        if (src_end - src < len + 8 * bits)
            return ((void*)0);
        color_table = src;
        src += len;
        init_get_bits(&gb, src, bits * 8 * 8); src += bits * 8;
        for (b = 0; b < 8; b++) {
            for (i = 0; i < 8; i++)
                dst[i] = color_table[get_bits(&gb, bits)];
            dst += seq->frame->linesize[0];
        }
    }

    return src;
}
