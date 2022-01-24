#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  table; } ;
struct TYPE_11__ {int coupling_point; size_t num_coupled; scalar_t__* type; size_t* id_select; size_t* ch_select; void*** gain; } ;
struct TYPE_10__ {TYPE_4__ coup; TYPE_2__* ch; } ;
struct TYPE_8__ {int num_window_groups; int max_sfb; } ;
struct TYPE_9__ {scalar_t__* band_type; TYPE_1__ ics; } ;
typedef  TYPE_2__ SingleChannelElement ;
typedef  void* INTFLOAT ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ ChannelElement ;
typedef  TYPE_4__ ChannelCoupling ;
typedef  int /*<<< orphan*/  AACContext ;

/* Variables and functions */
 int AFTER_IMDCT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERANGE ; 
 void* FUNC1 (int) ; 
 int FUNC2 (void*,int) ; 
 scalar_t__ TYPE_CPE ; 
 scalar_t__ TYPE_SCE ; 
 scalar_t__ ZERO_BT ; 
 int FUNC3 (void*) ; 
 void** cce_scale ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 TYPE_5__ vlc_scalefactors ; 

__attribute__((used)) static int FUNC8(AACContext *ac, GetBitContext *gb, ChannelElement *che)
{
    int num_gain = 0;
    int c, g, sfb, ret;
    int sign;
    INTFLOAT scale;
    SingleChannelElement *sce = &che->ch[0];
    ChannelCoupling     *coup = &che->coup;

    coup->coupling_point = 2 * FUNC6(gb);
    coup->num_coupled = FUNC5(gb, 3);
    for (c = 0; c <= coup->num_coupled; c++) {
        num_gain++;
        coup->type[c] = FUNC6(gb) ? TYPE_CPE : TYPE_SCE;
        coup->id_select[c] = FUNC5(gb, 4);
        if (coup->type[c] == TYPE_CPE) {
            coup->ch_select[c] = FUNC5(gb, 2);
            if (coup->ch_select[c] == 3)
                num_gain++;
        } else
            coup->ch_select[c] = 2;
    }
    coup->coupling_point += FUNC6(gb) || (coup->coupling_point >> 1);

    sign  = FUNC5(gb, 1);
#if USE_FIXED
    scale = get_bits(gb, 2);
#else
    scale = cce_scale[FUNC5(gb, 2)];
#endif

    if ((ret = FUNC4(ac, sce, gb, 0, 0)))
        return ret;

    for (c = 0; c < num_gain; c++) {
        int idx  = 0;
        int cge  = 1;
        int gain = 0;
        INTFLOAT gain_cache = FUNC1(1.);
        if (c) {
            cge = coup->coupling_point == AFTER_IMDCT ? 1 : FUNC6(gb);
            gain = cge ? FUNC7(gb, vlc_scalefactors.table, 7, 3) - 60: 0;
            gain_cache = FUNC2(scale, gain);
#if USE_FIXED
            if ((abs(gain_cache)-1024) >> 3 > 30)
                return AVERROR(ERANGE);
#endif
        }
        if (coup->coupling_point == AFTER_IMDCT) {
            coup->gain[c][0] = gain_cache;
        } else {
            for (g = 0; g < sce->ics.num_window_groups; g++) {
                for (sfb = 0; sfb < sce->ics.max_sfb; sfb++, idx++) {
                    if (sce->band_type[idx] != ZERO_BT) {
                        if (!cge) {
                            int t = FUNC7(gb, vlc_scalefactors.table, 7, 3) - 60;
                            if (t) {
                                int s = 1;
                                t = gain += t;
                                if (sign) {
                                    s  -= 2 * (t & 0x1);
                                    t >>= 1;
                                }
                                gain_cache = FUNC2(scale, t) * s;
#if USE_FIXED
                                if ((abs(gain_cache)-1024) >> 3 > 30)
                                    return AVERROR(ERANGE);
#endif
                            }
                        }
                        coup->gain[c][idx] = gain_cache;
                    }
                }
            }
        }
    }
    return 0;
}