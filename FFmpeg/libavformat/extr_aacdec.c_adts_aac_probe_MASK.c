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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int buf_size; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(const AVProbeData *p)
{
    int max_frames = 0, first_frames = 0;
    int fsize, frames;
    const uint8_t *buf0 = p->buf;
    const uint8_t *buf2;
    const uint8_t *buf;
    const uint8_t *end = buf0 + p->buf_size - 7;

    buf = buf0;

    for (; buf < end; buf = buf2 + 1) {
        buf2 = buf;

        for (frames = 0; buf2 < end; frames++) {
            uint32_t header = FUNC0(buf2);
            if ((header & 0xFFF6) != 0xFFF0) {
                if (buf != buf0) {
                    // Found something that isn't an ADTS header, starting
                    // from a position other than the start of the buffer.
                    // Discard the count we've accumulated so far since it
                    // probably was a false positive.
                    frames = 0;
                }
                break;
            }
            fsize = (FUNC1(buf2 + 3) >> 13) & 0x1FFF;
            if (fsize < 7)
                break;
            fsize = FUNC3(fsize, end - buf2);
            buf2 += fsize;
        }
        max_frames = FUNC2(max_frames, frames);
        if (buf == buf0)
            first_frames = frames;
    }

    if (first_frames >= 3)
        return AVPROBE_SCORE_EXTENSION + 1;
    else if (max_frames > 100)
        return AVPROBE_SCORE_EXTENSION;
    else if (max_frames >= 3)
        return AVPROBE_SCORE_EXTENSION / 2;
    else if (first_frames >= 1)
        return 1;
    else
        return 0;
}