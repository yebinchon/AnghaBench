
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct TYPE_5__ {int start_time; int rate; int channels; int samplesize; int bytes_in_buffer; TYPE_1__ thread; int fifo_buffer; scalar_t__ total_written; scalar_t__ has_written; } ;
typedef TYPE_2__ rsound_t ;
typedef int int64_t ;


 int fifo_read_avail (int ) ;
 int rsnd_get_time_usec () ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void rsnd_drain(rsound_t *rd)
{

   if ( rd->has_written )
   {

      int64_t time = rsnd_get_time_usec();

      int64_t delta = time - rd->start_time;
      delta *= rd->rate * rd->channels * rd->samplesize;
      delta /= 1000000;

      slock_lock(rd->thread.mutex);
      rd->bytes_in_buffer = (int)((int64_t)rd->total_written + (int64_t)fifo_read_avail(rd->fifo_buffer) - delta);
      slock_unlock(rd->thread.mutex);
   }
   else
   {
      slock_lock(rd->thread.mutex);
      rd->bytes_in_buffer = fifo_read_avail(rd->fifo_buffer);
      slock_unlock(rd->thread.mutex);
   }
}
