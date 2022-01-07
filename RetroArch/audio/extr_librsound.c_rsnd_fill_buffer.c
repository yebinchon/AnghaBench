
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cond; int mutex; int cond_mutex; } ;
struct TYPE_5__ {TYPE_1__ thread; int fifo_buffer; int thread_active; } ;
typedef TYPE_2__ rsound_t ;


 int RSD_DEBUG (char*) ;
 int fifo_write (int ,char const*,size_t) ;
 size_t fifo_write_avail (int ) ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static size_t rsnd_fill_buffer(rsound_t *rd, const char *buf, size_t size)
{


   for (;;)
   {

      if ( !rd->thread_active )
         return 0;

      slock_lock(rd->thread.mutex);
      if ( fifo_write_avail(rd->fifo_buffer) >= size )
      {
         slock_unlock(rd->thread.mutex);
         break;
      }
      slock_unlock(rd->thread.mutex);


      slock_lock(rd->thread.cond_mutex);
      scond_signal(rd->thread.cond);

      RSD_DEBUG("[RSound] rsnd_fill_buffer: Going to sleep.\n");
      scond_wait(rd->thread.cond, rd->thread.cond_mutex);
      RSD_DEBUG("[RSound] rsnd_fill_buffer: Woke up.\n");
      slock_unlock(rd->thread.cond_mutex);
   }

   slock_lock(rd->thread.mutex);
   fifo_write(rd->fifo_buffer, buf, size);
   slock_unlock(rd->thread.mutex);




   scond_signal(rd->thread.cond);

   return size;
}
