
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int count; int width; int height; int time; } ;
typedef TYPE_1__ vc_progress_element ;
typedef scalar_t__ uint64_t ;
typedef void* uint32_t ;


 int clock_interval_to_absolutetime_interval (int,int,scalar_t__*) ;
 int thread_call_setup (int *,int ,int *) ;
 unsigned char const* vc_clut ;
 unsigned char const* vc_clut8 ;
 TYPE_1__* vc_progress ;
 unsigned char const* vc_progress_alpha ;
 int vc_progress_call ;
 unsigned char const** vc_progress_data ;
 void* vc_progress_interval ;
 int vc_progress_task ;
 int vc_progressmeter_call ;
 void* vc_progressmeter_interval ;
 int vc_progressmeter_task ;

void
vc_progress_initialize( vc_progress_element * desc,
   const unsigned char * data1x,
   const unsigned char * data2x,
   const unsigned char * data3x,
   const unsigned char * clut )
{
    uint64_t abstime;

    if( (!clut) || (!desc) || (!data1x))
 return;
    vc_clut = clut;
    vc_clut8 = clut;

    vc_progress = desc;
    vc_progress_data[0] = data1x;
    vc_progress_data[1] = data2x;
    vc_progress_data[2] = data3x;
    if( 2 & vc_progress->flags)
        vc_progress_alpha = data1x
                            + vc_progress->count * vc_progress->width * vc_progress->height;
    else
        vc_progress_alpha = ((void*)0);

    thread_call_setup(&vc_progress_call, vc_progress_task, ((void*)0));
    clock_interval_to_absolutetime_interval(vc_progress->time, 1000 * 1000, &abstime);
    vc_progress_interval = (uint32_t)abstime;


    thread_call_setup(&vc_progressmeter_call, vc_progressmeter_task, ((void*)0));
    clock_interval_to_absolutetime_interval(1000 / 8, 1000 * 1000, &abstime);
    vc_progressmeter_interval = (uint32_t)abstime;


}
