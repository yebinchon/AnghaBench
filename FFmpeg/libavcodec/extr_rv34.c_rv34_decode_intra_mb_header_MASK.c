#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  intra_types ;
typedef  int /*<<< orphan*/  int8_t ;
struct TYPE_10__ {int mb_x; int mb_y; int mb_stride; TYPE_1__* current_picture_ptr; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
struct TYPE_8__ {int /*<<< orphan*/  vlc_set; int /*<<< orphan*/  quant; } ;
struct TYPE_9__ {int luma_vlc; scalar_t__ (* decode_intra_types ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  is16; int /*<<< orphan*/  cur_vlcs; TYPE_2__ si; scalar_t__ chroma_vlc; int /*<<< orphan*/  block_type; int /*<<< orphan*/  rv30; int /*<<< orphan*/  intra_types_stride; TYPE_4__ s; } ;
struct TYPE_7__ {int /*<<< orphan*/ * mb_type; } ;
typedef  TYPE_3__ RV34DecContext ;
typedef  TYPE_4__ MpegEncContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  MB_TYPE_INTRA ; 
 int /*<<< orphan*/  MB_TYPE_INTRA16x16 ; 
 int /*<<< orphan*/  RV34_MB_TYPE_INTRA ; 
 int /*<<< orphan*/  RV34_MB_TYPE_INTRA16x16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(RV34DecContext *r, int8_t *intra_types)
{
    MpegEncContext *s = &r->s;
    GetBitContext *gb = &s->gb;
    int mb_pos = s->mb_x + s->mb_y * s->mb_stride;
    int t;

    r->is16 = FUNC4(gb);
    if(r->is16){
        s->current_picture_ptr->mb_type[mb_pos] = MB_TYPE_INTRA16x16;
        r->block_type = RV34_MB_TYPE_INTRA16x16;
        t = FUNC3(gb, 2);
        FUNC2(intra_types, 4, 4, r->intra_types_stride, t, sizeof(intra_types[0]));
        r->luma_vlc   = 2;
    }else{
        if(!r->rv30){
            if(!FUNC4(gb))
                FUNC0(s->avctx, AV_LOG_ERROR, "Need DQUANT\n");
        }
        s->current_picture_ptr->mb_type[mb_pos] = MB_TYPE_INTRA;
        r->block_type = RV34_MB_TYPE_INTRA;
        if(r->decode_intra_types(r, gb, intra_types) < 0)
            return -1;
        r->luma_vlc   = 1;
    }

    r->chroma_vlc = 0;
    r->cur_vlcs   = FUNC1(r->si.quant, r->si.vlc_set, 0);

    return FUNC5(gb, r->cur_vlcs, r->is16);
}