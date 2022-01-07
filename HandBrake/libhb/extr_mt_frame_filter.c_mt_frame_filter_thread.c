
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int segment; int out; TYPE_2__* pv; } ;
typedef TYPE_1__ mt_frame_thread_arg_t ;
struct TYPE_6__ {int taskset; int ** buf; TYPE_3__* sub_filter; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_7__ {int (* work ) (TYPE_3__*,int **,int *) ;int (* work_thread ) (TYPE_3__*,int **,int *,int) ;} ;


 int hb_buffer_close (int **) ;
 int hb_log (char*,int) ;
 int stub1 (TYPE_3__*,int **,int *,int) ;
 int stub2 (TYPE_3__*,int **,int *) ;
 int taskset_thread_complete (int *,int) ;
 scalar_t__ taskset_thread_stop (int *,int) ;
 int taskset_thread_wait4start (int *,int) ;

__attribute__((used)) static void mt_frame_filter_thread(void *thread_args_v)
{
    mt_frame_thread_arg_t *thread_data = thread_args_v;
    hb_filter_private_t *pv = thread_data->pv;
    int segment = thread_data->segment;

    hb_log("MTFrame thread started for segment %d", segment);

    while (1)
    {

        taskset_thread_wait4start(&pv->taskset, segment);

        if (taskset_thread_stop(&pv->taskset, segment))
        {
            break;
        }

        if (pv->sub_filter->work_thread != ((void*)0))
        {
            pv->sub_filter->work_thread(pv->sub_filter,
                                 &pv->buf[segment], &thread_data->out, segment);
        }
        else
        {
            pv->sub_filter->work(pv->sub_filter,
                                 &pv->buf[segment], &thread_data->out);
        }
        if (pv->buf[segment] != ((void*)0))
        {
            hb_buffer_close(&pv->buf[segment]);
        }


        taskset_thread_complete(&pv->taskset, segment);
    }
    taskset_thread_complete(&pv->taskset, segment);
}
