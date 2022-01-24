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
struct TYPE_3__ {char* buf; int buf_size; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(const AVProbeData *p)
{
    int i, score = 0;

    /* check file header */
    /* streamed files might not have any header */
    if (p->buf[0] == 'N' && p->buf[1] == 'S' &&
        p->buf[2] == 'V' && (p->buf[3] == 'f' || p->buf[3] == 's'))
        return AVPROBE_SCORE_MAX;
    /* XXX: do streamed files always start at chunk boundary ?? */
    /* or do we need to search NSVs in the byte stream ? */
    /* seems the servers don't bother starting clean chunks... */
    /* sometimes even the first header is at 9KB or something :^) */
    for (i = 1; i < p->buf_size - 3; i++) {
        if (FUNC2(p->buf + i) == FUNC2("NSVs")) {
            /* Get the chunk size and check if at the end we are getting 0xBEEF */
            int vsize = FUNC1(p->buf+i+19) >> 4;
            int asize = FUNC0(p->buf+i+22);
            int offset = i + 23 + asize + vsize + 1;
            if (offset <= p->buf_size - 2 && FUNC0(p->buf + offset) == 0xBEEF)
                return 4*AVPROBE_SCORE_MAX/5;
            score = AVPROBE_SCORE_MAX/5;
        }
    }
    /* so we'll have more luck on extension... */
    if (FUNC3(p->filename, "nsv"))
        return AVPROBE_SCORE_EXTENSION;
    /* FIXME: add mime-type check */
    return score;
}