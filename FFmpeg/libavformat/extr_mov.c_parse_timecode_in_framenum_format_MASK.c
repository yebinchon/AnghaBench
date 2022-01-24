#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  avg_frame_rate; } ;
typedef  int /*<<< orphan*/  AVTimecode ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int AV_TIMECODE_STR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVStream *st,
                                             uint32_t value, int flags)
{
    AVTimecode tc;
    char buf[AV_TIMECODE_STR_SIZE];
    AVRational rate = st->avg_frame_rate;
    int ret = FUNC1(&tc, rate, flags, 0, s);
    if (ret < 0)
        return ret;
    FUNC0(&st->metadata, "timecode",
                FUNC2(&tc, buf, value), 0);
    return 0;
}