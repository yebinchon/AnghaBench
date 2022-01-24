#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * graph; } ;
struct TYPE_7__ {int /*<<< orphan*/  nframes; int /*<<< orphan*/  frame; int /*<<< orphan*/  list; TYPE_1__ video_filters; } ;
typedef  TYPE_2__ hb_work_private_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(hb_work_private_t *pv)
{
    FUNC5(pv);
    if (pv->video_filters.graph != NULL)
    {
        int result;

        FUNC2(pv->video_filters.graph, pv->frame);
        result = FUNC3(pv->video_filters.graph, pv->frame);
        while (result >= 0)
        {
            hb_buffer_t * buf = FUNC1(pv);
            FUNC4(&pv->list, buf);
            FUNC0(pv->frame);
            ++pv->nframes;
            result = FUNC3(pv->video_filters.graph, pv->frame);
        }
    }
    else
    {
        hb_buffer_t * buf = FUNC1(pv);
        FUNC4(&pv->list, buf);
        FUNC0(pv->frame);
        ++pv->nframes;
    }
}