
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_plugs; unsigned int threads; int die; scalar_t__ conf; struct TYPE_6__* thread_data; int cond; int lock; int thread; struct TYPE_6__* plugs; scalar_t__ lib; scalar_t__ impl_data; TYPE_1__* impl; struct TYPE_6__* packets; } ;
typedef TYPE_2__ rarch_softfilter_t ;
struct TYPE_5__ {int (* destroy ) (scalar_t__) ;} ;


 int config_file_free (scalar_t__) ;
 int dylib_close (scalar_t__) ;
 int free (TYPE_2__*) ;
 int scond_free (int ) ;
 int scond_signal (int ) ;
 int slock_free (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int sthread_join (int ) ;
 int stub1 (scalar_t__) ;

void rarch_softfilter_free(rarch_softfilter_t *filt)
{
   unsigned i = 0;
   (void)i;

   if (!filt)
      return;

   free(filt->packets);
   if (filt->impl && filt->impl_data)
      filt->impl->destroy(filt->impl_data);
   if (filt->conf)
      config_file_free(filt->conf);

   free(filt);
}
