
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {int * table; } ;
typedef TYPE_1__ VLC ;
struct TYPE_7__ {int avctx; } ;
typedef int GetBitContext ;
typedef TYPE_2__ CLLCContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int VLC_BITS ;
 int VLC_DEPTH ;
 int av_log (int ,int ,char*,int) ;
 int ff_init_vlc_sparse (TYPE_1__*,int,int,int*,int,int,int *,int,int,int*,int,int,int ) ;
 void* get_bits (int *,int) ;

__attribute__((used)) static int read_code_table(CLLCContext *ctx, GetBitContext *gb, VLC *vlc)
{
    uint8_t symbols[256];
    uint8_t bits[256];
    uint16_t codes[256];
    int num_lens, num_codes, num_codes_sum, prefix;
    int i, j, count;

    prefix = 0;
    count = 0;
    num_codes_sum = 0;

    num_lens = get_bits(gb, 5);

    if (num_lens > VLC_BITS * VLC_DEPTH) {
        vlc->table = ((void*)0);

        av_log(ctx->avctx, AV_LOG_ERROR, "To long VLCs %d\n", num_lens);
        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i < num_lens; i++) {
        num_codes = get_bits(gb, 9);
        num_codes_sum += num_codes;

        if (num_codes_sum > 256) {
            vlc->table = ((void*)0);

            av_log(ctx->avctx, AV_LOG_ERROR,
                   "Too many VLCs (%d) to be read.\n", num_codes_sum);
            return AVERROR_INVALIDDATA;
        }

        for (j = 0; j < num_codes; j++) {
            symbols[count] = get_bits(gb, 8);
            bits[count] = i + 1;
            codes[count] = prefix++;

            count++;
        }
        if (prefix > (65535 - 256)/2) {
            vlc->table = ((void*)0);
            return AVERROR_INVALIDDATA;
        }

        prefix <<= 1;
    }

    return ff_init_vlc_sparse(vlc, VLC_BITS, count, bits, 1, 1,
                              codes, 2, 2, symbols, 1, 1, 0);
}
