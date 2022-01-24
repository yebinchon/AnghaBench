#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * swresample; int /*<<< orphan*/ * list; struct TYPE_8__* input_buf; struct TYPE_8__* output_buf; TYPE_3__* context; } ;
typedef  TYPE_1__ hb_work_private_t ;
struct TYPE_9__ {TYPE_1__* private_data; } ;
typedef  TYPE_2__ hb_work_object_t ;
struct TYPE_10__ {int /*<<< orphan*/ * codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC7(hb_work_object_t * w)
{
    hb_work_private_t * pv = w->private_data;

    if (pv != NULL)
    {
        if (pv->context != NULL)
        {
            FUNC0(w);
            FUNC4(2, "encavcodecaudio: closing libavcodec");
            if (pv->context->codec != NULL) {
                FUNC1(pv->context);
            }
            FUNC3(&pv->context);
        }

        if (pv->output_buf != NULL)
        {
            FUNC2(pv->output_buf);
        }
        if (pv->input_buf != NULL && pv->input_buf != pv->output_buf)
        {
            FUNC2(pv->input_buf);
        }
        pv->output_buf = pv->input_buf = NULL;

        if (pv->list != NULL)
        {
            FUNC5(&pv->list);
        }

        if (pv->swresample != NULL)
        {
            FUNC6(&pv->swresample);
        }

        FUNC2(pv);
        w->private_data = NULL;
    }
}