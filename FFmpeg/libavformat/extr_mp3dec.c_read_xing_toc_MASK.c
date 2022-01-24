#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {int flags; int /*<<< orphan*/ * streams; int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int xing_toc; scalar_t__ usetoc; } ;
typedef  TYPE_1__ MP3DecContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVFMT_FLAG_FAST_SEEK ; 
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int XING_TOC_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s, int64_t filesize, int64_t duration)
{
    int i;
    MP3DecContext *mp3 = s->priv_data;
    int fast_seek = s->flags & AVFMT_FLAG_FAST_SEEK;
    int fill_index = (mp3->usetoc || fast_seek) && duration > 0;

    if (!filesize &&
        !(filesize = FUNC4(s->pb))) {
        FUNC1(s, AV_LOG_WARNING, "Cannot determine file size, skipping TOC table.\n");
        fill_index = 0;
    }

    for (i = 0; i < XING_TOC_COUNT; i++) {
        uint8_t b = FUNC3(s->pb);
        if (fill_index)
            FUNC0(s->streams[0],
                           FUNC2(b, filesize, 256),
                           FUNC2(i, duration, XING_TOC_COUNT),
                           0, 0, AVINDEX_KEYFRAME);
    }
    if (fill_index)
        mp3->xing_toc = 1;
}