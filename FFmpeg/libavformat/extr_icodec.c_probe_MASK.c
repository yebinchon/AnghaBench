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
struct TYPE_3__ {int buf_size; int* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 scalar_t__ FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 int FUNC3 (unsigned int,int) ; 
 scalar_t__ PNGSIG ; 

__attribute__((used)) static int FUNC4(const AVProbeData *p)
{
    unsigned i, frames, checked = 0;

    if (p->buf_size < 22 || FUNC1(p->buf) || FUNC1(p->buf + 2) != 1)
        return 0;
    frames = FUNC1(p->buf + 4);
    if (!frames)
        return 0;
    for (i = 0; i < frames && i * 16 + 22 <= p->buf_size; i++) {
        unsigned offset;
        if (FUNC1(p->buf + 10 + i * 16) & ~1)
            return FUNC3(i, AVPROBE_SCORE_MAX / 4);
        if (p->buf[13 + i * 16])
            return FUNC3(i, AVPROBE_SCORE_MAX / 4);
        if (FUNC2(p->buf + 14 + i * 16) < 40)
            return FUNC3(i, AVPROBE_SCORE_MAX / 4);
        offset = FUNC2(p->buf + 18 + i * 16);
        if (offset < 22)
            return FUNC3(i, AVPROBE_SCORE_MAX / 4);
        if (offset > p->buf_size - 8)
            continue;
        if (p->buf[offset] != 40 && FUNC0(p->buf + offset) != PNGSIG)
            return FUNC3(i, AVPROBE_SCORE_MAX / 4);
        checked++;
    }

    if (checked < frames)
        return AVPROBE_SCORE_MAX / 4 + FUNC3(checked, 1);
    return AVPROBE_SCORE_MAX / 2 + 1;
}