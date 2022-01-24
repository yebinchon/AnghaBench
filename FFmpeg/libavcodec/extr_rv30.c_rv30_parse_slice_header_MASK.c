#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int extradata_size; int* extradata; } ;
struct TYPE_9__ {int width; int height; TYPE_4__* avctx; } ;
struct TYPE_11__ {int max_rpr; int orig_width; int orig_height; TYPE_1__ s; } ;
struct TYPE_10__ {int type; int width; int height; void* start; void* pts; void* quant; } ;
typedef  TYPE_2__ SliceInfo ;
typedef  TYPE_3__ RV34DecContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(RV34DecContext *r, GetBitContext *gb, SliceInfo *si)
{
    AVCodecContext *avctx = r->s.avctx;
    int mb_bits;
    int w = r->s.width, h = r->s.height;
    int mb_size;
    int rpr;

    FUNC6(si, 0, sizeof(SliceInfo));
    if(FUNC4(gb, 3))
        return -1;
    si->type = FUNC4(gb, 2);
    if(si->type == 1) si->type = 0;
    if(FUNC5(gb))
        return -1;
    si->quant = FUNC4(gb, 5);
    FUNC7(gb);
    si->pts = FUNC4(gb, 13);
    rpr = FUNC4(gb, FUNC2(r->max_rpr) + 1);
    if(rpr){
        if (rpr > r->max_rpr) {
            FUNC1(avctx, AV_LOG_ERROR, "rpr too large\n");
            return AVERROR_INVALIDDATA;
        }

        if (avctx->extradata_size < rpr * 2 + 8) {
            FUNC1(avctx, AV_LOG_ERROR,
                   "Insufficient extradata - need at least %d bytes, got %d\n",
                   8 + rpr * 2, avctx->extradata_size);
            return FUNC0(EINVAL);
        }

        w = r->s.avctx->extradata[6 + rpr*2] << 2;
        h = r->s.avctx->extradata[7 + rpr*2] << 2;
    } else {
        w = r->orig_width;
        h = r->orig_height;
    }
    si->width  = w;
    si->height = h;
    mb_size = ((w + 15) >> 4) * ((h + 15) >> 4);
    mb_bits = FUNC3(gb, mb_size);
    si->start = FUNC4(gb, mb_bits);
    FUNC7(gb);
    return 0;
}