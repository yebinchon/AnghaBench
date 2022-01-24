#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  buf; } ;
struct TYPE_8__ {int* bs_code; int ch_mode; } ;
struct TYPE_9__ {int* sr_code; int channels; int bps_code; TYPE_3__ pb; int /*<<< orphan*/  frame_count; TYPE_1__ frame; } ;
typedef  TYPE_1__ FlacFrame ;
typedef  TYPE_2__ FlacEncodeContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CRC_8_ATM ; 
 int FLAC_CHMODE_INDEPENDENT ; 
 int FLAC_MAX_CHANNELS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(FlacEncodeContext *s)
{
    FlacFrame *frame;
    int crc;

    frame = &s->frame;

    FUNC3(&s->pb, 16, 0xFFF8);
    FUNC3(&s->pb, 4, frame->bs_code[0]);
    FUNC3(&s->pb, 4, s->sr_code[0]);

    if (frame->ch_mode == FLAC_CHMODE_INDEPENDENT)
        FUNC3(&s->pb, 4, s->channels-1);
    else
        FUNC3(&s->pb, 4, frame->ch_mode + FLAC_MAX_CHANNELS - 1);

    FUNC3(&s->pb, 3, s->bps_code);
    FUNC3(&s->pb, 1, 0);
    FUNC5(&s->pb, s->frame_count);

    if (frame->bs_code[0] == 6)
        FUNC3(&s->pb, 8, frame->bs_code[1]);
    else if (frame->bs_code[0] == 7)
        FUNC3(&s->pb, 16, frame->bs_code[1]);

    if (s->sr_code[0] == 12)
        FUNC3(&s->pb, 8, s->sr_code[1]);
    else if (s->sr_code[0] > 12)
        FUNC3(&s->pb, 16, s->sr_code[1]);

    FUNC2(&s->pb);
    crc = FUNC0(FUNC1(AV_CRC_8_ATM), 0, s->pb.buf,
                 FUNC4(&s->pb) >> 3);
    FUNC3(&s->pb, 8, crc);
}