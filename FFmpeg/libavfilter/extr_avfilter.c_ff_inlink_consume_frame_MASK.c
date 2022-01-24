#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ samples_skipped; } ;
struct TYPE_15__ {TYPE_9__ fifo; } ;
struct TYPE_14__ {int /*<<< orphan*/  nb_samples; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 

int FUNC5(AVFilterLink *link, AVFrame **rframe)
{
    AVFrame *frame;

    *rframe = NULL;
    if (!FUNC3(link))
        return 0;

    if (link->fifo.samples_skipped) {
        frame = FUNC1(&link->fifo, 0);
        return FUNC4(link, frame->nb_samples, frame->nb_samples, rframe);
    }

    frame = FUNC2(&link->fifo);
    FUNC0(link, frame);
    *rframe = frame;
    return 1;
}