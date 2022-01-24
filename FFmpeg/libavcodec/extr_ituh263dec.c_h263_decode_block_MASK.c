#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int int8_t ;
typedef  int int16_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* clear_block ) (int*) ;} ;
struct TYPE_17__ {size_t* permutated; } ;
struct TYPE_16__ {size_t* permutated; } ;
struct TYPE_15__ {size_t* permutated; } ;
struct TYPE_19__ {int mb_intra; scalar_t__ codec_id; int rv10_version; scalar_t__ pict_type; int* last_dc; int* rv10_first_dc_coded; int mb_x; int mb_y; int* block_last_index; int h263_flv; scalar_t__ h263_aic; TYPE_12__* avctx; TYPE_1__ bdsp; int /*<<< orphan*/  gb; scalar_t__ alt_inter_vlc; TYPE_4__ intra_h_scantable; TYPE_3__ intra_v_scantable; scalar_t__ h263_aic_dir; scalar_t__ ac_pred; TYPE_2__ intra_scantable; } ;
struct TYPE_18__ {int /*<<< orphan*/ * rl_vlc; } ;
struct TYPE_13__ {int err_recognition; } ;
typedef  TYPE_5__ RLTable ;
typedef  TYPE_6__ MpegEncContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_RV10 ; 
 int AV_EF_BITSTREAM ; 
 int AV_EF_COMPLIANT ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ CONFIG_FLV_DECODER ; 
 scalar_t__ CONFIG_RV10_DECODER ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TEX_VLC_BITS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_12__*,int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int*,int) ; 
 TYPE_5__ ff_h263_rl_inter ; 
 TYPE_5__ ff_rl_intra_aic ; 
 int FUNC10 (TYPE_6__*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  re ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 

__attribute__((used)) static int FUNC13(MpegEncContext * s, int16_t * block,
                             int n, int coded)
{
    int level, i, j, run;
    RLTable *rl = &ff_h263_rl_inter;
    const uint8_t *scan_table;
    GetBitContext gb= s->gb;

    scan_table = s->intra_scantable.permutated;
    if (s->h263_aic && s->mb_intra) {
        rl = &ff_rl_intra_aic;
        i = 0;
        if (s->ac_pred) {
            if (s->h263_aic_dir)
                scan_table = s->intra_v_scantable.permutated; /* left */
            else
                scan_table = s->intra_h_scantable.permutated; /* top */
        }
    } else if (s->mb_intra) {
        /* DC coef */
        if (CONFIG_RV10_DECODER && s->codec_id == AV_CODEC_ID_RV10) {
          if (s->rv10_version == 3 && s->pict_type == AV_PICTURE_TYPE_I) {
            int component, diff;
            component = (n <= 3 ? 0 : n - 4 + 1);
            level = s->last_dc[component];
            if (s->rv10_first_dc_coded[component]) {
                diff = FUNC10(s, n);
                if (diff == 0xffff)
                    return -1;
                level += diff;
                level = level & 0xff; /* handle wrap round */
                s->last_dc[component] = level;
            } else {
                s->rv10_first_dc_coded[component] = 1;
            }
          } else {
                level = FUNC11(&s->gb, 8);
                if (level == 255)
                    level = 128;
          }
        }else{
            level = FUNC11(&s->gb, 8);
            if((level&0x7F) == 0){
                FUNC8(s->avctx, AV_LOG_ERROR, "illegal dc %d at %d %d\n", level, s->mb_x, s->mb_y);
                if (s->avctx->err_recognition & (AV_EF_BITSTREAM|AV_EF_COMPLIANT))
                    return -1;
            }
            if (level == 255)
                level = 128;
        }
        block[0] = level;
        i = 1;
    } else {
        i = 0;
    }
    if (!coded) {
        if (s->mb_intra && s->h263_aic)
            goto not_coded;
        s->block_last_index[n] = i - 1;
        return 0;
    }
retry:
    {
    FUNC2(re, &s->gb);
    i--; // offset by -1 to allow direct indexing of scan_table
    for(;;) {
        FUNC7(re, &s->gb);
        FUNC1(level, run, re, &s->gb, rl->rl_vlc[0], TEX_VLC_BITS, 2, 0);
        if (run == 66) {
            if (level){
                FUNC0(re, &s->gb);
                FUNC8(s->avctx, AV_LOG_ERROR, "illegal ac vlc code at %dx%d\n", s->mb_x, s->mb_y);
                return -1;
            }
            /* escape */
            if (CONFIG_FLV_DECODER && s->h263_flv > 1) {
                int is11 = FUNC4(re, &s->gb, 1);
                FUNC5(re, &s->gb, 1);
                run = FUNC4(re, &s->gb, 7) + 1;
                if (is11) {
                    FUNC6(re, &s->gb, 1 + 7);
                    FUNC7(re, &s->gb);
                    level = FUNC3(re, &s->gb, 11);
                    FUNC6(re, &s->gb, 11);
                } else {
                    FUNC5(re, &s->gb, 7);
                    level = FUNC3(re, &s->gb, 7);
                    FUNC6(re, &s->gb, 1 + 7 + 7);
                }
            } else {
                run = FUNC4(re, &s->gb, 7) + 1;
                FUNC5(re, &s->gb, 7);
                level = (int8_t)FUNC4(re, &s->gb, 8);
                FUNC6(re, &s->gb, 7 + 8);
                if(level == -128){
                    FUNC7(re, &s->gb);
                    if (s->codec_id == AV_CODEC_ID_RV10) {
                        /* XXX: should patch encoder too */
                        level = FUNC3(re, &s->gb, 12);
                        FUNC6(re, &s->gb, 12);
                    }else{
                        level = FUNC4(re, &s->gb, 5);
                        FUNC5(re, &s->gb, 5);
                        level |= FUNC3(re, &s->gb, 6) * (1<<5);
                        FUNC6(re, &s->gb, 5 + 6);
                    }
                }
            }
        } else {
            if (FUNC4(re, &s->gb, 1))
                level = -level;
            FUNC6(re, &s->gb, 1);
        }
        i += run;
        if (i >= 64){
            FUNC0(re, &s->gb);
            // redo update without last flag, revert -1 offset
            i = i - run + ((run-1)&63) + 1;
            if (i < 64) {
                // only last marker, no overrun
                block[scan_table[i]] = level;
                break;
            }
            if(s->alt_inter_vlc && rl == &ff_h263_rl_inter && !s->mb_intra){
                //Looks like a hack but no, it's the way it is supposed to work ...
                rl = &ff_rl_intra_aic;
                i = 0;
                s->gb= gb;
                s->bdsp.clear_block(block);
                goto retry;
            }
            FUNC8(s->avctx, AV_LOG_ERROR, "run overflow at %dx%d i:%d\n", s->mb_x, s->mb_y, s->mb_intra);
            return -1;
        }
        j = scan_table[i];
        block[j] = level;
    }
    }
not_coded:
    if (s->mb_intra && s->h263_aic) {
        FUNC9(s, block, n);
        i = 63;
    }
    s->block_last_index[n] = i;
    return 0;
}