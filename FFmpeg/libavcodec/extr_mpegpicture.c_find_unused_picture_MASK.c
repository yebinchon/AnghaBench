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
struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_5__ {int /*<<< orphan*/ * buf; } ;
typedef  TYPE_2__ Picture ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int MAX_PICTURE_COUNT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(AVCodecContext *avctx, Picture *picture, int shared)
{
    int i;

    if (shared) {
        for (i = 0; i < MAX_PICTURE_COUNT; i++) {
            if (!picture[i].f->buf[0])
                return i;
        }
    } else {
        for (i = 0; i < MAX_PICTURE_COUNT; i++) {
            if (FUNC2(&picture[i]))
                return i;
        }
    }

    FUNC1(avctx, AV_LOG_FATAL,
           "Internal error, picture buffer overflow\n");
    /* We could return -1, but the codec would crash trying to draw into a
     * non-existing frame anyway. This is safer than waiting for a random crash.
     * Also the return of this is never useful, an encoder must only allocate
     * as much as allowed in the specification. This has no relationship to how
     * much libavcodec could allocate (and MAX_PICTURE_COUNT is always large
     * enough for such valid streams).
     * Plus, a decoder has to check stream validity and remove frames if too
     * many reference frames are around. Waiting for "OOM" is not correct at
     * all. Similarly, missing reference frames have to be replaced by
     * interpolated/MC frames, anything else is a bug in the codec ...
     */
    FUNC0();
    return -1;
}