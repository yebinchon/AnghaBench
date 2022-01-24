#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_8__ {TYPE_1__* ic; } ;
typedef  TYPE_2__ VideoState ;
struct TYPE_9__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  start; } ;
struct TYPE_7__ {int nb_chapters; TYPE_3__** chapters; } ;
typedef  TYPE_3__ AVChapter ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int AV_TIME_BASE ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(VideoState *is, int incr)
{
    int64_t pos = FUNC4(is) * AV_TIME_BASE;
    int i;

    if (!is->ic->nb_chapters)
        return;

    /* find the current chapter */
    for (i = 0; i < is->ic->nb_chapters; i++) {
        AVChapter *ch = is->ic->chapters[i];
        if (FUNC1(pos, AV_TIME_BASE_Q, ch->start, ch->time_base) < 0) {
            i--;
            break;
        }
    }

    i += incr;
    i = FUNC0(i, 0);
    if (i >= is->ic->nb_chapters)
        return;

    FUNC2(NULL, AV_LOG_VERBOSE, "Seeking to chapter %d.\n", i);
    FUNC5(is, FUNC3(is->ic->chapters[i]->start, is->ic->chapters[i]->time_base,
                                 AV_TIME_BASE_Q), 0, 0);
}