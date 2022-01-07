
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cpu_count; int grayscale_taskset; TYPE_1__* grayscale_arguments; } ;
typedef TYPE_2__ hb_filter_private_t ;
typedef int hb_buffer_t ;
struct TYPE_4__ {int * src; } ;


 int taskset_cycle (int *) ;

__attribute__((used)) static void grayscale_filter( hb_filter_private_t * pv,
                              hb_buffer_t * in )
{

    int segment;

    for( segment = 0; segment < pv->cpu_count; segment++ )
    {



        pv->grayscale_arguments[segment].src = in;
    }




    taskset_cycle( &pv->grayscale_taskset );




}
