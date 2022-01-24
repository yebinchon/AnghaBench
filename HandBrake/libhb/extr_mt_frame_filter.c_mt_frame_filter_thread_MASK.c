#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int segment; int /*<<< orphan*/  out; TYPE_2__* pv; } ;
typedef  TYPE_1__ mt_frame_thread_arg_t ;
struct TYPE_6__ {int /*<<< orphan*/  taskset; int /*<<< orphan*/ ** buf; TYPE_3__* sub_filter; } ;
typedef  TYPE_2__ hb_filter_private_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* work ) (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* work_thread ) (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(void *thread_args_v)
{
    mt_frame_thread_arg_t *thread_data = thread_args_v;
    hb_filter_private_t *pv = thread_data->pv;
    int segment = thread_data->segment;

    FUNC1("MTFrame thread started for segment %d", segment);

    while (1)
    {
        // Wait until there is work to do.
        FUNC6(&pv->taskset, segment);

        if (FUNC5(&pv->taskset, segment))
        {
            break;
        }

        if (pv->sub_filter->work_thread != NULL)
        {
            pv->sub_filter->work_thread(pv->sub_filter,
                                 &pv->buf[segment], &thread_data->out, segment);
        }
        else
        {
            pv->sub_filter->work(pv->sub_filter,
                                 &pv->buf[segment], &thread_data->out);
        }
        if (pv->buf[segment] != NULL)
        {
            FUNC0(&pv->buf[segment]);
        }

        // Finished this segment, notify.
        FUNC4(&pv->taskset, segment);
    }
    FUNC4(&pv->taskset, segment);
}