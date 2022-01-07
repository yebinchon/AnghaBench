
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* buf; struct TYPE_6__* thread_data; int taskset; TYPE_3__* sub_filter; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_7__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
struct TYPE_8__ {int (* close ) (TYPE_3__*) ;} ;


 int free (TYPE_1__*) ;
 int stub1 (TYPE_3__*) ;
 int taskset_fini (int *) ;

__attribute__((used)) static void mt_frame_close(hb_filter_object_t *filter)
{
    hb_filter_private_t *pv = filter->private_data;

    if (pv == ((void*)0))
    {
        return;
    }

    pv->sub_filter->close(pv->sub_filter);
    taskset_fini(&pv->taskset);
    free(pv->thread_data);
    free(pv->buf);
    free(pv);
    filter->private_data = ((void*)0);
}
