
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cond; int cond_mutex; int mutex; } ;
struct TYPE_6__ {TYPE_1__ thread; int cb_lock; struct TYPE_6__* port; struct TYPE_6__* host; scalar_t__ fifo_buffer; } ;
typedef TYPE_2__ rsound_t ;


 int fifo_free (scalar_t__) ;
 int free (TYPE_2__*) ;
 int retro_assert (int ) ;
 int scond_free (int ) ;
 int slock_free (int ) ;

int rsd_free(rsound_t *rsound)
{
   retro_assert(rsound != ((void*)0));
   if (rsound->fifo_buffer)
      fifo_free(rsound->fifo_buffer);
   if (rsound->host)
      free(rsound->host);
   if (rsound->port)
      free(rsound->port);

   slock_free(rsound->thread.mutex);
   slock_free(rsound->thread.cond_mutex);
   slock_free(rsound->cb_lock);
   scond_free(rsound->thread.cond);

   free(rsound);

   return 0;
}
