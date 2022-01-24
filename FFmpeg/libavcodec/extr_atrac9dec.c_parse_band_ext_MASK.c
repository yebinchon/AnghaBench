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
struct TYPE_5__ {int q_unit_cnt; TYPE_1__* channel; scalar_t__ has_band_ext; int /*<<< orphan*/  has_band_ext_data; } ;
struct TYPE_4__ {int band_ext; void** band_ext_data; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  ATRAC9Context ;
typedef  TYPE_1__ ATRAC9ChannelData ;
typedef  TYPE_2__ ATRAC9BlockData ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int** at9_tab_band_ext_cnt ; 
 int** at9_tab_band_ext_group ; 
 int*** at9_tab_band_ext_lengths ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static inline int FUNC5(ATRAC9Context *s, ATRAC9BlockData *b,
                                 GetBitContext *gb, int stereo)
{
    int ext_band = 0;

    if (b->has_band_ext) {
        if (b->q_unit_cnt < 13)
            return AVERROR_INVALIDDATA;
        ext_band = at9_tab_band_ext_group[b->q_unit_cnt - 13][2];
        if (stereo) {
            b->channel[1].band_ext = FUNC0(gb, 2);
            b->channel[1].band_ext = ext_band > 2 ? b->channel[1].band_ext : 4;
        } else {
            FUNC3(gb);
        }
    }

    b->has_band_ext_data = FUNC1(gb);
    if (!b->has_band_ext_data)
        return 0;

    if (!b->has_band_ext) {
        FUNC2(gb, 2);
        FUNC4(gb, FUNC0(gb, 5));
        return 0;
    }

    b->channel[0].band_ext = FUNC0(gb, 2);
    b->channel[0].band_ext = ext_band > 2 ? b->channel[0].band_ext : 4;

    if (!FUNC0(gb, 5))
        return 0;

    for (int i = 0; i <= stereo; i++) {
        ATRAC9ChannelData *c = &b->channel[i];
        const int count = at9_tab_band_ext_cnt[c->band_ext][ext_band];
        for (int j = 0; j < count; j++) {
            int len = at9_tab_band_ext_lengths[c->band_ext][ext_band][j];
            c->band_ext_data[j] = FUNC0(gb, len);
        }
    }

    return 0;
}