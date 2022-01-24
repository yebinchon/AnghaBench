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
typedef  scalar_t__ uint8_t ;
struct TYPE_4__ {int* window_sequence; } ;
struct TYPE_5__ {TYPE_1__ ics; } ;
typedef  TYPE_2__ SingleChannelElement ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(SingleChannelElement * sce, GetBitContext * gb)
{
    // wd_num, wd_test, aloc_size
    static const uint8_t gain_mode[4][3] = {
        {1, 0, 5},  // ONLY_LONG_SEQUENCE = 0,
        {2, 1, 2},  // LONG_START_SEQUENCE,
        {8, 0, 2},  // EIGHT_SHORT_SEQUENCE,
        {2, 1, 5},  // LONG_STOP_SEQUENCE
    };

    const int mode = sce->ics.window_sequence[0];
    uint8_t bd, wd, ad;

    // FIXME: Store the gain control data on |sce| and do something with it.
    uint8_t max_band = FUNC0(gb, 2);
    for (bd = 0; bd < max_band; bd++) {
        for (wd = 0; wd < gain_mode[mode][0]; wd++) {
            uint8_t adjust_num = FUNC0(gb, 3);
            for (ad = 0; ad < adjust_num; ad++) {
                FUNC1(gb, 4 + ((wd == 0 && gain_mode[mode][1])
                                     ? 4
                                     : gain_mode[mode][2]));
            }
        }
    }
}