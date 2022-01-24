#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int err_recognition; } ;
struct TYPE_9__ {int /*<<< orphan*/  table; } ;
struct TYPE_8__ {int /*<<< orphan*/  table; } ;
struct TYPE_7__ {TYPE_6__* avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AV_EF_BITSTREAM ; 
 int AV_EF_COMPLIANT ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  DC_VLC_BITS ; 
 scalar_t__ IS_3IV1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_5__ dc_chrom ; 
 TYPE_4__ dc_lum ; 
 int FUNC1 (TYPE_1__*,int,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC6(MpegEncContext *s, int n, int *dir_ptr)
{
    int level, code;

    if (n < 4)
        code = FUNC4(&s->gb, dc_lum.table, DC_VLC_BITS, 1);
    else
        code = FUNC4(&s->gb, dc_chrom.table, DC_VLC_BITS, 1);

    if (code < 0 || code > 9 /* && s->nbit < 9 */) {
        FUNC0(s->avctx, AV_LOG_ERROR, "illegal dc vlc\n");
        return AVERROR_INVALIDDATA;
    }

    if (code == 0) {
        level = 0;
    } else {
        if (IS_3IV1) {
            if (code == 1)
                level = 2 * FUNC3(&s->gb) - 1;
            else {
                if (FUNC3(&s->gb))
                    level = FUNC2(&s->gb, code - 1) + (1 << (code - 1));
                else
                    level = -FUNC2(&s->gb, code - 1) - (1 << (code - 1));
            }
        } else {
            level = FUNC5(&s->gb, code);
        }

        if (code > 8) {
            if (FUNC3(&s->gb) == 0) { /* marker */
                if (s->avctx->err_recognition & (AV_EF_BITSTREAM|AV_EF_COMPLIANT)) {
                    FUNC0(s->avctx, AV_LOG_ERROR, "dc marker bit missing\n");
                    return AVERROR_INVALIDDATA;
                }
            }
        }
    }

    return FUNC1(s, n, level, dir_ptr, 0);
}