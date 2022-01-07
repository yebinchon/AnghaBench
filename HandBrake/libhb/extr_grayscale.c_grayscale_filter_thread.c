
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cpu_count; int grayscale_taskset; TYPE_5__* grayscale_arguments; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_8__ {TYPE_1__* plane; } ;
typedef TYPE_3__ hb_buffer_t ;
struct TYPE_9__ {int segment; TYPE_2__* pv; } ;
typedef TYPE_4__ grayscale_thread_arg_t ;
struct TYPE_10__ {TYPE_3__* src; } ;
typedef TYPE_5__ grayscale_arguments_t ;
struct TYPE_6__ {int stride; int height; int * data; } ;


 int hb_deep_log (int,char*,int) ;
 int hb_error (char*) ;
 int hb_snooze (int) ;
 int memset (int *,int,int) ;
 int taskset_thread_complete (int *,int) ;
 scalar_t__ taskset_thread_stop (int *,int) ;
 int taskset_thread_wait4start (int *,int) ;

void grayscale_filter_thread( void *thread_args_v )
{
    grayscale_arguments_t *grayscale_work = ((void*)0);
    hb_filter_private_t * pv;
    int run = 1;
    int plane;
    int segment, segment_start, segment_stop;
    grayscale_thread_arg_t *thread_args = thread_args_v;
    hb_buffer_t *src_buf;

    pv = thread_args->pv;
    segment = thread_args->segment;

    hb_deep_log(3, "Grayscale thread started for segment %d", segment);

    while( run )
    {



        taskset_thread_wait4start( &pv->grayscale_taskset, segment );

        if( taskset_thread_stop( &pv->grayscale_taskset, segment ) )
        {



            run = 0;
            goto report_completion;
        }

        grayscale_work = &pv->grayscale_arguments[segment];
        if (grayscale_work->src == ((void*)0))
        {
            hb_error( "Thread started when no work available" );
            hb_snooze(500);
            goto report_completion;
        }




        src_buf = grayscale_work->src;
        for (plane = 1; plane < 3; plane++)
        {
            int src_stride = src_buf->plane[plane].stride;
            int height = src_buf->plane[plane].height;
            segment_start = (height / pv->cpu_count) * segment;
            if (segment == pv->cpu_count - 1)
            {



                segment_stop = height;
            } else {
                segment_stop = (height / pv->cpu_count) * (segment + 1);
            }

            memset(&src_buf->plane[plane].data[segment_start * src_stride],
                   0x80, (segment_stop - segment_start) * src_stride);
        }

report_completion:



        taskset_thread_complete( &pv->grayscale_taskset, segment );
    }
}
