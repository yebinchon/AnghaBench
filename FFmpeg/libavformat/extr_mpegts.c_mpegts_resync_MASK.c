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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {TYPE_1__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_6__ {int resync_size; } ;
typedef  TYPE_1__ MpegTSContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, int seekback, const uint8_t *current_packet)
{
    MpegTSContext *ts = s->priv_data;
    AVIOContext *pb = s->pb;
    int c, i;
    uint64_t pos = FUNC5(pb);

    FUNC4(pb, -FUNC0(seekback, pos), SEEK_CUR);

    //Special case for files like 01c56b0dc1.ts
    if (current_packet[0] == 0x80 && current_packet[12] == 0x47) {
        FUNC4(pb, 12, SEEK_CUR);
        return 0;
    }

    for (i = 0; i < ts->resync_size; i++) {
        c = FUNC3(pb);
        if (FUNC2(pb))
            return AVERROR_EOF;
        if (c == 0x47) {
            FUNC4(pb, -1, SEEK_CUR);
            FUNC6(s->priv_data);
            return 0;
        }
    }
    FUNC1(s, AV_LOG_ERROR,
           "max resync size reached, could not find sync byte\n");
    /* no sync found */
    return AVERROR_INVALIDDATA;
}