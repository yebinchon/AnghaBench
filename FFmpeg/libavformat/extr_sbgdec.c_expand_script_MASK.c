#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sbg_script {int nb_tseq; int nb_events; TYPE_1__* events; int /*<<< orphan*/  end_ts; scalar_t__ opt_end_at_last; int /*<<< orphan*/ * tseq; } ;
struct TYPE_2__ {int /*<<< orphan*/  ts; } ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct sbg_script*) ; 
 int FUNC2 (void*,struct sbg_script*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *log, struct sbg_script *s)
{
    int i, r, nb_events_max = 0;

    FUNC1(log, s);
    for (i = 0; i < s->nb_tseq; i++) {
        r = FUNC2(log, s, &nb_events_max, 0, &s->tseq[i]);
        if (r < 0)
            return r;
    }
    if (!s->nb_events) {
        FUNC0(log, AV_LOG_ERROR, "No events in script\n");
        return AVERROR_INVALIDDATA;
    }
    if (s->opt_end_at_last)
        s->end_ts = s->events[s->nb_events - 1].ts;
    return 0;
}