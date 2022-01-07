
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int block_switching; unsigned int frame_length; } ;
struct TYPE_5__ {unsigned int num_blocks; unsigned int cur_frame_length; TYPE_1__ sconf; int gb; } ;
typedef int GetBitContext ;
typedef TYPE_1__ ALSSpecificConfig ;
typedef TYPE_2__ ALSDecContext ;


 int get_bits_long (int *,unsigned int) ;
 int parse_bs_info (int,int ,int ,unsigned int**,unsigned int*) ;

__attribute__((used)) static void get_block_sizes(ALSDecContext *ctx, unsigned int *div_blocks,
                            uint32_t *bs_info)
{
    ALSSpecificConfig *sconf = &ctx->sconf;
    GetBitContext *gb = &ctx->gb;
    unsigned int *ptr_div_blocks = div_blocks;
    unsigned int b;

    if (sconf->block_switching) {
        unsigned int bs_info_len = 1 << (sconf->block_switching + 2);
        *bs_info = get_bits_long(gb, bs_info_len);
        *bs_info <<= (32 - bs_info_len);
    }

    ctx->num_blocks = 0;
    parse_bs_info(*bs_info, 0, 0, &ptr_div_blocks, &ctx->num_blocks);
    for (b = 0; b < ctx->num_blocks; b++)
        div_blocks[b] = ctx->sconf.frame_length >> div_blocks[b];

    if (ctx->cur_frame_length != ctx->sconf.frame_length) {
        unsigned int remaining = ctx->cur_frame_length;

        for (b = 0; b < ctx->num_blocks; b++) {
            if (remaining <= div_blocks[b]) {
                div_blocks[b] = remaining;
                ctx->num_blocks = b + 1;
                break;
            }

            remaining -= div_blocks[b];
        }
    }
}
