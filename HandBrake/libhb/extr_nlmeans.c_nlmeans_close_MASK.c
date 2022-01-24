#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* nframes; int threads; int max_frames; struct TYPE_7__* thread_data; struct TYPE_7__* frame; TYPE_1__* plane; int /*<<< orphan*/  taskset; } ;
typedef  TYPE_2__ hb_filter_private_t ;
struct TYPE_8__ {TYPE_2__* private_data; } ;
typedef  TYPE_3__ hb_filter_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_2__* mem; TYPE_2__* mem_pre; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(hb_filter_object_t *filter)
{
    hb_filter_private_t *pv = filter->private_data;

    if (pv == NULL)
    {
        return;
    }

    FUNC2(&pv->taskset);
    for (int c = 0; c < 3; c++)
    {
        for (int f = 0; f < pv->nframes[c]; f++)
        {
            if (pv->frame[f].plane[c].mem_pre != NULL &&
                pv->frame[f].plane[c].mem_pre != pv->frame[f].plane[c].mem)
            {
                FUNC0(pv->frame[f].plane[c].mem_pre);
                pv->frame[f].plane[c].mem_pre = NULL;
            }
            if (pv->frame[f].plane[c].mem != NULL)
            {
                FUNC0(pv->frame[f].plane[c].mem);
                pv->frame[f].plane[c].mem = NULL;
            }
        }
    }

    for (int ii = 0; ii < pv->threads + pv->max_frames; ii++)
    {
        for (int c = 0; c < 3; c++)
        {
            FUNC1(&pv->frame[ii].plane[c].mutex);
        }
    }

    FUNC0(pv->frame);
    FUNC0(pv->thread_data);
    FUNC0(pv);
    filter->private_data = NULL;
}