#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nfreqbands; } ;
struct TYPE_4__ {int nfreqbands; int nframesegs; int nchsets; int* navi; int frame_size; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; int /*<<< orphan*/  seg_size_nbits; TYPE_2__* chset; int /*<<< orphan*/  navi_size; } ;
typedef  TYPE_1__ DCAXllDecoder ;
typedef  TYPE_2__ DCAXllChSet ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(DCAXllDecoder *s)
{
    int chs, seg, band, navi_nb, navi_pos, *navi_ptr;
    DCAXllChSet *c;

    // Determine size of NAVI table
    navi_nb = s->nfreqbands * s->nframesegs * s->nchsets;
    if (navi_nb > 1024) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Too many NAVI entries (%d)\n", navi_nb);
        return AVERROR_INVALIDDATA;
    }

    // Reallocate NAVI table
    FUNC1(&s->navi, &s->navi_size, navi_nb * sizeof(*s->navi));
    if (!s->navi)
        return FUNC0(ENOMEM);

    // Parse NAVI
    navi_pos = FUNC4(&s->gb);
    navi_ptr = s->navi;
    for (band = 0; band < s->nfreqbands; band++) {
        for (seg = 0; seg < s->nframesegs; seg++) {
            for (chs = 0, c = s->chset; chs < s->nchsets; chs++, c++) {
                int size = 0;
                if (c->nfreqbands > band) {
                    size = FUNC5(&s->gb, s->seg_size_nbits);
                    if (size < 0 || size >= s->frame_size) {
                        FUNC2(s->avctx, AV_LOG_ERROR, "Invalid NAVI segment size (%d bytes)\n", size);
                        return AVERROR_INVALIDDATA;
                    }
                    size++;
                }
                *navi_ptr++ = size;
            }
        }
    }

    // Byte align
    // CRC16
    FUNC6(&s->gb, -FUNC4(&s->gb) & 7);
    FUNC6(&s->gb, 16);

    // Check CRC
    if (FUNC3(s->avctx, &s->gb, navi_pos, FUNC4(&s->gb))) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Invalid NAVI checksum\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}