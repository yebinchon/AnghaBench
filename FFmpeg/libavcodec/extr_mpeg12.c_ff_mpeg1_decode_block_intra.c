
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;
struct TYPE_3__ {int * rl_vlc; } ;
typedef TYPE_1__ RLTable ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int CLOSE_READER (int ,int *) ;
 scalar_t__ GET_CACHE (int ,int *) ;
 int GET_RL_VLC (int,int,int ,int *,int ,int ,int,int ) ;
 int LAST_SKIP_BITS (int ,int *,int) ;
 int MAX_INDEX ;
 int OPEN_READER (int ,int *) ;
 int SHOW_SBITS (int ,int *,int) ;
 int SHOW_UBITS (int ,int *,int) ;
 int SKIP_BITS (int ,int *,int) ;
 int TEX_VLC_BITS ;
 int UPDATE_CACHE (int ,int *) ;
 int decode_dc (int *,int) ;
 TYPE_1__ ff_rl_mpeg1 ;
 int re ;

int ff_mpeg1_decode_block_intra(GetBitContext *gb,
                                const uint16_t *quant_matrix,
                                uint8_t *const scantable, int last_dc[3],
                                int16_t *block, int index, int qscale)
{
    int dc, diff, i = 0, component;
    RLTable *rl = &ff_rl_mpeg1;


    component = index <= 3 ? 0 : index - 4 + 1;

    diff = decode_dc(gb, component);
    if (diff >= 0xffff)
        return AVERROR_INVALIDDATA;

    dc = last_dc[component];
    dc += diff;
    last_dc[component] = dc;

    block[0] = dc * quant_matrix[0];

    {
        OPEN_READER(re, gb);
        UPDATE_CACHE(re, gb);
        if (((int32_t)GET_CACHE(re, gb)) <= (int32_t)0xBFFFFFFF)
            goto end;


        while (1) {
            int level, run, j;

            GET_RL_VLC(level, run, re, gb, rl->rl_vlc[0],
                       TEX_VLC_BITS, 2, 0);

            if (level != 0) {
                i += run;
                if (i > MAX_INDEX)
                    break;

                j = scantable[i];
                level = (level * qscale * quant_matrix[j]) >> 4;
                level = (level - 1) | 1;
                level = (level ^ SHOW_SBITS(re, gb, 1)) -
                        SHOW_SBITS(re, gb, 1);
                SKIP_BITS(re, gb, 1);
            } else {

                run = SHOW_UBITS(re, gb, 6) + 1;
                LAST_SKIP_BITS(re, gb, 6);
                UPDATE_CACHE(re, gb);
                level = SHOW_SBITS(re, gb, 8);
                SKIP_BITS(re, gb, 8);

                if (level == -128) {
                    level = SHOW_UBITS(re, gb, 8) - 256;
                    SKIP_BITS(re, gb, 8);
                } else if (level == 0) {
                    level = SHOW_UBITS(re, gb, 8);
                    SKIP_BITS(re, gb, 8);
                }

                i += run;
                if (i > MAX_INDEX)
                    break;

                j = scantable[i];
                if (level < 0) {
                    level = -level;
                    level = (level * qscale * quant_matrix[j]) >> 4;
                    level = (level - 1) | 1;
                    level = -level;
                } else {
                    level = (level * qscale * quant_matrix[j]) >> 4;
                    level = (level - 1) | 1;
                }
            }

            block[j] = level;
            if (((int32_t)GET_CACHE(re, gb)) <= (int32_t)0xBFFFFFFF)
               break;

            UPDATE_CACHE(re, gb);
        }
end:
        LAST_SKIP_BITS(re, gb, 2);
        CLOSE_READER(re, gb);
    }

    if (i > MAX_INDEX)
        i = AVERROR_INVALIDDATA;

    return i;
}
