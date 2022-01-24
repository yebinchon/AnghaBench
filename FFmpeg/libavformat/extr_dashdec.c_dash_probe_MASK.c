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
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(const AVProbeData *p)
{
    if (!FUNC0(p->buf, "<MPD"))
        return 0;

    if (FUNC0(p->buf, "dash:profile:isoff-on-demand:2011") ||
        FUNC0(p->buf, "dash:profile:isoff-live:2011") ||
        FUNC0(p->buf, "dash:profile:isoff-live:2012") ||
        FUNC0(p->buf, "dash:profile:isoff-main:2011")) {
        return AVPROBE_SCORE_MAX;
    }
    if (FUNC0(p->buf, "dash:profile")) {
        return AVPROBE_SCORE_MAX;
    }

    return 0;
}