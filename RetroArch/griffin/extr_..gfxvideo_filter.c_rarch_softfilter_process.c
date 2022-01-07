
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int threads; TYPE_4__* packets; int impl_data; TYPE_2__* thread_data; TYPE_1__* impl; } ;
typedef TYPE_3__ rarch_softfilter_t ;
struct TYPE_9__ {int thread_data; int (* work ) (int ,int ) ;} ;
struct TYPE_7__ {int done; int lock; int cond; TYPE_4__* packet; } ;
struct TYPE_6__ {int (* get_work_packets ) (int ,TYPE_4__*,void*,size_t,void const*,unsigned int,unsigned int,size_t) ;} ;


 int RARCH_LOG (char*,unsigned int) ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int stub1 (int ,TYPE_4__*,void*,size_t,void const*,unsigned int,unsigned int,size_t) ;
 int stub2 (int ,int ) ;

void rarch_softfilter_process(rarch_softfilter_t *filt,
      void *output, size_t output_stride,
      const void *input, unsigned width, unsigned height,
      size_t input_stride)
{
   unsigned i;

   if (!filt)
      return;

   if (filt->impl && filt->impl->get_work_packets)
      filt->impl->get_work_packets(filt->impl_data, filt->packets,
            output, output_stride, input, width, height, input_stride);
   for (i = 0; i < filt->threads; i++)
      filt->packets[i].work(filt->impl_data, filt->packets[i].thread_data);

}
