
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct TYPE_5__ {TYPE_1__ thread; int fifo_buffer; } ;
typedef TYPE_2__ rsound_t ;


 int fifo_read_avail (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static size_t rsnd_get_ptr(rsound_t *rd)
{
   int ptr;
   slock_lock(rd->thread.mutex);
   ptr = fifo_read_avail(rd->fifo_buffer);
   slock_unlock(rd->thread.mutex);

   return ptr;
}
