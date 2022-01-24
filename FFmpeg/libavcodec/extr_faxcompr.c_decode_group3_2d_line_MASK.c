#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  table; } ;
struct TYPE_3__ {int /*<<< orphan*/  table; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 TYPE_2__ ccitt_group3_2d_vlc ; 
 TYPE_1__* ccitt_vlc ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int**,int const*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, GetBitContext *gb,
                                 unsigned int width, int *runs,
                                 const int *runend, const int *ref)
{
    int mode          = 0, saved_run = 0, t;
    int run_off       = *ref++;
    unsigned int offs = 0, run = 0;

    while (offs < width) {
        int cmode = FUNC4(gb, ccitt_group3_2d_vlc.table, 9, 1);
        if (cmode == -1) {
            FUNC0(avctx, AV_LOG_ERROR, "Incorrect mode VLC\n");
            return AVERROR_INVALIDDATA;
        }
        if (!cmode) { //pass mode
            if (run_off < width)
                run_off += *ref++;
            run      = run_off - offs;
            offs     = run_off;
            if (run_off < width)
                run_off += *ref++;
            if (offs > width) {
                FUNC0(avctx, AV_LOG_ERROR, "Run went out of bounds\n");
                return AVERROR_INVALIDDATA;
            }
            saved_run += run;
        } else if (cmode == 1) { //horizontal mode
            int k;
            for (k = 0; k < 2; k++) {
                run = 0;
                for (;;) {
                    t = FUNC4(gb, ccitt_vlc[mode].table, 9, 2);
                    if (t == -1) {
                        FUNC0(avctx, AV_LOG_ERROR, "Incorrect code\n");
                        return AVERROR_INVALIDDATA;
                    }
                    run += t;
                    if (t < 64)
                        break;
                }
                *runs++ = run + saved_run;
                if (runs >= runend) {
                    FUNC0(avctx, AV_LOG_ERROR, "Run overrun\n");
                    return AVERROR_INVALIDDATA;
                }
                saved_run = 0;
                offs     += run;
                if (offs > width || run > width) {
                    FUNC0(avctx, AV_LOG_ERROR, "Run went out of bounds\n");
                    return AVERROR_INVALIDDATA;
                }
                mode = !mode;
            }
        } else if (cmode == 9 || cmode == 10) {
            int xxx = FUNC3(gb, 3);
            if (cmode == 9 && xxx == 7) {
                int ret;
                int pix_left = width - offs;

                if (saved_run) {
                    FUNC0(avctx, AV_LOG_ERROR, "saved run %d on entering uncompressed mode\n", saved_run);
                    return AVERROR_INVALIDDATA;
                }
                ret = FUNC2(avctx, gb, &pix_left, &runs, runend, &mode);
                offs = width - pix_left;
                if (ret < 0) {
                    return ret;
                } else if (ret)
                    break;
            } else {
                FUNC1(avctx, "Special mode %d xxx=%d support", cmode, xxx);
                return AVERROR_PATCHWELCOME;
            }
        } else { //vertical mode
            run      = run_off - offs + (cmode - 5);
            run_off -= *--ref;
            offs    += run;
            if (offs > width || run > width) {
                FUNC0(avctx, AV_LOG_ERROR, "Run went out of bounds\n");
                return AVERROR_INVALIDDATA;
            }
            *runs++ = run + saved_run;
            if (runs >= runend) {
                FUNC0(avctx, AV_LOG_ERROR, "Run overrun\n");
                return AVERROR_INVALIDDATA;
            }
            saved_run = 0;
            mode      = !mode;
        }
        //sync line pointers
        while (offs < width && run_off <= offs) {
            run_off += *ref++;
            run_off += *ref++;
        }
    }
    *runs++ = saved_run;
    if (saved_run) {
        if (runs >= runend) {
            FUNC0(avctx, AV_LOG_ERROR, "Run overrun\n");
            return -1;
        }
        *runs++ = 0;
    }
    return 0;
}