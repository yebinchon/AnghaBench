#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  status_in; } ;
struct TYPE_9__ {unsigned int nb_outputs; TYPE_5__** outputs; } ;
struct TYPE_8__ {int /*<<< orphan*/  status_in_pts; int /*<<< orphan*/  status_in; int /*<<< orphan*/  status_out; } ;
typedef  TYPE_1__ AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *filter, AVFilterLink *in)
{
    unsigned out = 0, progress = 0;
    int ret;

    FUNC0(!in->status_out);
    if (!filter->nb_outputs) {
        /* not necessary with the current API and sinks */
        return 0;
    }
    while (!in->status_out) {
        if (!filter->outputs[out]->status_in) {
            progress++;
            ret = FUNC3(filter->outputs[out]);
            if (ret < 0)
                return ret;
        }
        if (++out == filter->nb_outputs) {
            if (!progress) {
                /* Every output already closed: input no longer interesting
                   (example: overlay in shortest mode, other input closed). */
                FUNC1(in, in->status_in, in->status_in_pts);
                return 0;
            }
            progress = 0;
            out = 0;
        }
    }
    FUNC2(filter, 200);
    return 0;
}