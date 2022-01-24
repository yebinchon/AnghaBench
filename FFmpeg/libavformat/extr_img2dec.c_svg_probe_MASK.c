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
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_3__ {int buf_size; int /*<<< orphan*/  const* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,char*,int) ; 

__attribute__((used)) static int FUNC2(const AVProbeData *p)
{
    const uint8_t *b = p->buf;
    const uint8_t *end = p->buf + p->buf_size;

    if (FUNC1(p->buf, "<?xml", 5))
        return 0;
    while (b < end) {
        int inc = FUNC0(b);
        if (!inc)
            break;
        b += inc;
        if (b >= end - 4)
            return 0;
        if (!FUNC1(b, "<svg", 4))
            return AVPROBE_SCORE_EXTENSION + 1;
    }
    return 0;
}