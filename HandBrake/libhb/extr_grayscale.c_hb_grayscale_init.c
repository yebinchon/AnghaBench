
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct hb_filter_private_s {int dummy; } ;
struct TYPE_8__ {int cpu_count; int grayscale_taskset; TYPE_5__* grayscale_arguments; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_9__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
typedef int hb_filter_init_t ;
struct TYPE_10__ {int segment; TYPE_1__* pv; } ;
typedef TYPE_3__ grayscale_thread_arg_t ;
typedef int grayscale_arguments_t ;
struct TYPE_11__ {int * src; } ;


 int HB_NORMAL_PRIORITY ;
 TYPE_1__* calloc (int,int) ;
 int grayscale_filter_thread ;
 int hb_error (char*) ;
 int hb_get_cpu_count () ;
 TYPE_5__* malloc (int) ;
 scalar_t__ taskset_init (int *,int,int) ;
 TYPE_3__* taskset_thread_args (int *,int) ;
 scalar_t__ taskset_thread_spawn (int *,int,char*,int ,int ) ;

__attribute__((used)) static int hb_grayscale_init( hb_filter_object_t * filter,
                              hb_filter_init_t * init )
{
    filter->private_data = calloc( 1, sizeof(struct hb_filter_private_s) );
    hb_filter_private_t * pv = filter->private_data;

    pv->cpu_count = hb_get_cpu_count();




    pv->grayscale_arguments = malloc(sizeof(grayscale_arguments_t) *
                                     pv->cpu_count);
    if (pv->grayscale_arguments == ((void*)0) ||
        taskset_init( &pv->grayscale_taskset, pv->cpu_count,
                      sizeof( grayscale_thread_arg_t ) ) == 0)
    {
        hb_error( "grayscale could not initialize taskset" );
    }

    int ii;
    for (ii = 0; ii < pv->cpu_count; ii++)
    {
        grayscale_thread_arg_t *thread_args;

        thread_args = taskset_thread_args(&pv->grayscale_taskset, ii);

        thread_args->pv = pv;
        thread_args->segment = ii;
        pv->grayscale_arguments[ii].src = ((void*)0);

        if (taskset_thread_spawn(&pv->grayscale_taskset, ii,
                                 "grayscale_filter_segment",
                                 grayscale_filter_thread,
                                 HB_NORMAL_PRIORITY ) == 0)
        {
            hb_error( "grayscale could not spawn thread" );
        }
    }

    return 0;
}
