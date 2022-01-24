#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int width; int height; int /*<<< orphan*/  avctx; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
struct TYPE_8__ {int type; int width; int height; void* start; void* pts; void* vlc_set; void* quant; } ;
typedef  TYPE_2__ SliceInfo ;
typedef  TYPE_3__ RV34DecContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(RV34DecContext *r, GetBitContext *gb, SliceInfo *si)
{
    int mb_bits;
    int w = r->s.width, h = r->s.height;
    int mb_size;
    int ret;

    FUNC4(si, 0, sizeof(SliceInfo));
    if(FUNC3(gb))
        return AVERROR_INVALIDDATA;
    si->type = FUNC2(gb, 2);
    if(si->type == 1) si->type = 0;
    si->quant = FUNC2(gb, 5);
    if(FUNC2(gb, 2))
        return AVERROR_INVALIDDATA;
    si->vlc_set = FUNC2(gb, 2);
    FUNC6(gb);
    si->pts = FUNC2(gb, 13);
    if(!si->type || !FUNC3(gb))
        FUNC5(gb, &w, &h);
    if ((ret = FUNC0(w, h, 0, r->s.avctx)) < 0)
        return ret;
    si->width  = w;
    si->height = h;
    mb_size = ((w + 15) >> 4) * ((h + 15) >> 4);
    mb_bits = FUNC1(gb, mb_size);
    si->start = FUNC2(gb, mb_bits);

    return 0;
}