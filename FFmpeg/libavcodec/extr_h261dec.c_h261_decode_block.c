
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_7__ {int* permutated; } ;
struct TYPE_9__ {int* block_last_index; int gb; int mb_y; int mb_x; int avctx; scalar_t__ mb_intra; TYPE_1__ intra_scantable; } ;
struct TYPE_10__ {TYPE_3__ s; } ;
struct TYPE_8__ {int * rl_vlc; } ;
typedef TYPE_2__ RLTable ;
typedef TYPE_3__ MpegEncContext ;
typedef TYPE_4__ H261Context ;


 int AV_LOG_ERROR ;
 int CLOSE_READER (int ,int *) ;
 int GET_RL_VLC (int,int,int ,int *,int ,int ,int,int ) ;
 int OPEN_READER (int ,int *) ;
 int SHOW_SBITS (int ,int *,int) ;
 int SHOW_UBITS (int ,int *,int) ;
 int SKIP_CACHE (int ,int *,int) ;
 int SKIP_COUNTER (int ,int *,int) ;
 int TCOEFF_VLC_BITS ;
 int UPDATE_CACHE (int ,int *) ;
 int av_log (int ,int ,char*,int,int ,...) ;
 TYPE_2__ ff_h261_rl_tcoeff ;
 int get_bits (int *,int) ;
 int re ;
 int show_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int h261_decode_block(H261Context *h, int16_t *block, int n, int coded)
{
    MpegEncContext *const s = &h->s;
    int level, i, j, run;
    RLTable *rl = &ff_h261_rl_tcoeff;
    const uint8_t *scan_table;







    scan_table = s->intra_scantable.permutated;
    if (s->mb_intra) {

        level = get_bits(&s->gb, 8);

        if ((level & 0x7F) == 0) {
            av_log(s->avctx, AV_LOG_ERROR, "illegal dc %d at %d %d\n",
                   level, s->mb_x, s->mb_y);
            return -1;
        }


        if (level == 255)
            level = 128;
        block[0] = level;
        i = 1;
    } else if (coded) {




        int check = show_bits(&s->gb, 2);
        i = 0;
        if (check & 0x2) {
            skip_bits(&s->gb, 2);
            block[0] = (check & 0x1) ? -1 : 1;
            i = 1;
        }
    } else {
        i = 0;
    }
    if (!coded) {
        s->block_last_index[n] = i - 1;
        return 0;
    }
    {
    OPEN_READER(re, &s->gb);
    i--;
    for (;;) {
        UPDATE_CACHE(re, &s->gb);
        GET_RL_VLC(level, run, re, &s->gb, rl->rl_vlc[0], TCOEFF_VLC_BITS, 2, 0);
        if (run == 66) {
            if (level) {
                CLOSE_READER(re, &s->gb);
                av_log(s->avctx, AV_LOG_ERROR, "illegal ac vlc code at %dx%d\n",
                       s->mb_x, s->mb_y);
                return -1;
            }




            run = SHOW_UBITS(re, &s->gb, 6) + 1;
            SKIP_CACHE(re, &s->gb, 6);
            level = SHOW_SBITS(re, &s->gb, 8);
            SKIP_COUNTER(re, &s->gb, 6 + 8);
        } else if (level == 0) {
            break;
        } else {
            if (SHOW_UBITS(re, &s->gb, 1))
                level = -level;
            SKIP_COUNTER(re, &s->gb, 1);
        }
        i += run;
        if (i >= 64) {
            CLOSE_READER(re, &s->gb);
            av_log(s->avctx, AV_LOG_ERROR, "run overflow at %dx%d\n",
                   s->mb_x, s->mb_y);
            return -1;
        }
        j = scan_table[i];
        block[j] = level;
    }
    CLOSE_READER(re, &s->gb);
    }
    s->block_last_index[n] = i;
    return 0;
}
