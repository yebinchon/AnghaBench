#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ch_mask; int frame_size; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; int /*<<< orphan*/  nchannels; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int DCA_SPEAKER_MASK_Cs ; 
 int /*<<< orphan*/  HEADER_XCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(DCACoreDecoder *s)
{
    int ret;

    if (s->ch_mask & DCA_SPEAKER_MASK_Cs) {
        FUNC0(s->avctx, AV_LOG_ERROR, "XCH with Cs speaker already present\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = FUNC2(s, HEADER_XCH, s->nchannels)) < 0)
        return ret;

    // Seek to the end of core frame, don't trust XCH frame size
    if (FUNC1(&s->gb, s->frame_size * 8)) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Read past end of XCH frame\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}