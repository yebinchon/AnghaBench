#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  table; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* ccitt_vlc ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int**,int const*,int*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, GetBitContext *gb,
                                 unsigned int pix_left, int *runs,
                                 const int *runend)
{
    int mode         = 0;
    unsigned int run = 0;
    unsigned int t;
    for (;;) {
        t    = FUNC2(gb, ccitt_vlc[mode].table, 9, 2);
        run += t;
        if (t < 64) {
            *runs++ = run;
            if (runs >= runend) {
                FUNC0(avctx, AV_LOG_ERROR, "Run overrun\n");
                return AVERROR_INVALIDDATA;
            }
            if (pix_left <= run) {
                if (pix_left == run)
                    break;
                FUNC0(avctx, AV_LOG_ERROR, "Run went out of bounds\n");
                return AVERROR_INVALIDDATA;
            }
            pix_left -= run;
            run       = 0;
            mode      = !mode;
        } else if ((int)t == -1) {
            if (FUNC3(gb, 12) == 15) {
                int ret;
                FUNC4(gb, 12);
                ret = FUNC1(avctx, gb, &pix_left, &runs, runend, &mode);
                if (ret < 0) {
                    return ret;
                } else if (ret)
                    break;
            } else {
                FUNC0(avctx, AV_LOG_ERROR, "Incorrect code\n");
                return AVERROR_INVALIDDATA;
            }
        }
    }
    *runs++ = 0;
    return 0;
}