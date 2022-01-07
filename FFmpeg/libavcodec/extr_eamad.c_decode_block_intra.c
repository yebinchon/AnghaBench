
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_6__ {int* permutated; } ;
struct TYPE_8__ {int* quant_matrix; int gb; int mb_y; int mb_x; int avctx; TYPE_1__ scantable; } ;
struct TYPE_7__ {int * rl_vlc; } ;
typedef TYPE_2__ RLTable ;
typedef TYPE_3__ MadContext ;


 int AV_LOG_ERROR ;
 int CLOSE_READER (int ,int *) ;
 int GET_RL_VLC (int,int,int ,int *,int ,int ,int,int ) ;
 int LAST_SKIP_BITS (int ,int *,int) ;
 int OPEN_READER (int ,int *) ;
 int SHOW_SBITS (int ,int *,int) ;
 int SHOW_UBITS (int ,int *,int) ;
 int SKIP_BITS (int ,int *,int) ;
 int TEX_VLC_BITS ;
 int UPDATE_CACHE (int ,int *) ;
 int av_log (int ,int ,char*,int ,int ) ;
 TYPE_2__ ff_rl_mpeg1 ;
 int get_sbits (int *,int) ;
 int re ;

__attribute__((used)) static inline int decode_block_intra(MadContext *s, int16_t * block)
{
    int level, i, j, run;
    RLTable *rl = &ff_rl_mpeg1;
    const uint8_t *scantable = s->scantable.permutated;
    int16_t *quant_matrix = s->quant_matrix;

    block[0] = (128 + get_sbits(&s->gb, 8)) * quant_matrix[0];



    i = 0;
    {
        OPEN_READER(re, &s->gb);

        for (;;) {
            UPDATE_CACHE(re, &s->gb);
            GET_RL_VLC(level, run, re, &s->gb, rl->rl_vlc[0], TEX_VLC_BITS, 2, 0);

            if (level == 127) {
                break;
            } else if (level != 0) {
                i += run;
                if (i > 63) {
                    av_log(s->avctx, AV_LOG_ERROR,
                           "ac-tex damaged at %d %d\n", s->mb_x, s->mb_y);
                    return -1;
                }
                j = scantable[i];
                level = (level*quant_matrix[j]) >> 4;
                level = (level-1)|1;
                level = (level ^ SHOW_SBITS(re, &s->gb, 1)) - SHOW_SBITS(re, &s->gb, 1);
                LAST_SKIP_BITS(re, &s->gb, 1);
            } else {

                UPDATE_CACHE(re, &s->gb);
                level = SHOW_SBITS(re, &s->gb, 10); SKIP_BITS(re, &s->gb, 10);

                UPDATE_CACHE(re, &s->gb);
                run = SHOW_UBITS(re, &s->gb, 6)+1; LAST_SKIP_BITS(re, &s->gb, 6);

                i += run;
                if (i > 63) {
                    av_log(s->avctx, AV_LOG_ERROR,
                           "ac-tex damaged at %d %d\n", s->mb_x, s->mb_y);
                    return -1;
                }
                j = scantable[i];
                if (level < 0) {
                    level = -level;
                    level = (level*quant_matrix[j]) >> 4;
                    level = (level-1)|1;
                    level = -level;
                } else {
                    level = (level*quant_matrix[j]) >> 4;
                    level = (level-1)|1;
                }
            }

            block[j] = level;
        }
        CLOSE_READER(re, &s->gb);
    }
    return 0;
}
