#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
struct TYPE_18__ {int size_in_bits; } ;
struct TYPE_17__ {int nfreqbands; } ;
struct TYPE_16__ {int nactivechsets; int* navi; int nfreqbands; int nframesegs; int nchsets; TYPE_3__ gb; TYPE_14__* avctx; TYPE_2__* chset; } ;
struct TYPE_15__ {int err_recognition; } ;
typedef  TYPE_1__ DCAXllDecoder ;
typedef  TYPE_2__ DCAXllChSet ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AV_EF_EXPLODE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_14__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*,int,int,int) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC7(DCAXllDecoder *s)
{
    int ret, chs, seg, band, navi_pos, *navi_ptr;
    DCAXllChSet *c;

    for (chs = 0, c = s->chset; chs < s->nactivechsets; chs++, c++) {
        if ((ret = FUNC2(s, c)) < 0)
            return ret;
        if ((ret = FUNC1(s, c)) < 0)
            return ret;
    }

    navi_pos = FUNC5(&s->gb);
    navi_ptr = s->navi;
    for (band = 0; band < s->nfreqbands; band++) {
        for (seg = 0; seg < s->nframesegs; seg++) {
            for (chs = 0, c = s->chset; chs < s->nchsets; chs++, c++) {
                if (c->nfreqbands > band) {
                    navi_pos += *navi_ptr * 8;
                    if (navi_pos > s->gb.size_in_bits) {
                        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid NAVI position\n");
                        return AVERROR_INVALIDDATA;
                    }
                    if (chs < s->nactivechsets &&
                        (ret = FUNC4(s, c, band, seg, navi_pos)) < 0) {
                        if (s->avctx->err_recognition & AV_EF_EXPLODE)
                            return ret;
                        FUNC3(s, c, band, seg);
                    }
                    FUNC6(&s->gb, navi_pos - FUNC5(&s->gb));
                }
                navi_ptr++;
            }
        }
    }

    return 0;
}