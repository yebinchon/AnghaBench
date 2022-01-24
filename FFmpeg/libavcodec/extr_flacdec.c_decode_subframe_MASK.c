#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_6__ {int bps; } ;
struct TYPE_7__ {int** decoded; scalar_t__ ch_mode; int blocksize; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; TYPE_1__ flac_stream_info; } ;
typedef  TYPE_2__ FLACContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ FLAC_CHMODE_LEFT_SIDE ; 
 scalar_t__ FLAC_CHMODE_MID_SIDE ; 
 scalar_t__ FLAC_CHMODE_RIGHT_SIDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_2__*,int*,int,int) ; 
 int FUNC3 (TYPE_2__*,int*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC10(FLACContext *s, int channel)
{
    int32_t *decoded = s->decoded[channel];
    int type, wasted = 0;
    int bps = s->flac_stream_info.bps;
    int i, tmp, ret;

    if (channel == 0) {
        if (s->ch_mode == FLAC_CHMODE_RIGHT_SIDE)
            bps++;
    } else {
        if (s->ch_mode == FLAC_CHMODE_LEFT_SIDE || s->ch_mode == FLAC_CHMODE_MID_SIDE)
            bps++;
    }

    if (FUNC5(&s->gb)) {
        FUNC0(s->avctx, AV_LOG_ERROR, "invalid subframe padding\n");
        return AVERROR_INVALIDDATA;
    }
    type = FUNC4(&s->gb, 6);

    if (FUNC5(&s->gb)) {
        int left = FUNC6(&s->gb);
        if ( left <= 0 ||
            (left < bps && !FUNC9(&s->gb, left)) ||
                           !FUNC9(&s->gb, bps)) {
            FUNC0(s->avctx, AV_LOG_ERROR,
                   "Invalid number of wasted bits > available bits (%d) - left=%d\n",
                   bps, left);
            return AVERROR_INVALIDDATA;
        }
        wasted = 1 + FUNC8(&s->gb, 1, FUNC6(&s->gb));
        bps -= wasted;
    }
    if (bps > 32) {
        FUNC1(s->avctx, "Decorrelated bit depth > 32");
        return AVERROR_PATCHWELCOME;
    }

//FIXME use av_log2 for types
    if (type == 0) {
        tmp = FUNC7(&s->gb, bps);
        for (i = 0; i < s->blocksize; i++)
            decoded[i] = tmp;
    } else if (type == 1) {
        for (i = 0; i < s->blocksize; i++)
            decoded[i] = FUNC7(&s->gb, bps);
    } else if ((type >= 8) && (type <= 12)) {
        if ((ret = FUNC2(s, decoded, type & ~0x8, bps)) < 0)
            return ret;
    } else if (type >= 32) {
        if ((ret = FUNC3(s, decoded, (type & ~0x20)+1, bps)) < 0)
            return ret;
    } else {
        FUNC0(s->avctx, AV_LOG_ERROR, "invalid coding type\n");
        return AVERROR_INVALIDDATA;
    }

    if (wasted && wasted < 32) {
        int i;
        for (i = 0; i < s->blocksize; i++)
            decoded[i] = (unsigned)decoded[i] << wasted;
    }

    return 0;
}