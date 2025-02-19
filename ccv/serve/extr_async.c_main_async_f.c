
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void (* cb ) (void*) ;void* context; } ;
typedef TYPE_1__ main_async_t ;


 int DISPATCH_TIME_FOREVER ;
 int EV_DEFAULT_ ;
 int assert (void (*) (void*)) ;
 TYPE_1__* async_queue ;
 int async_queue_semaphore ;
 int dispatch_semaphore_signal (int ) ;
 int dispatch_semaphore_wait (int ,int ) ;
 int ev_async_send (int) ;
 int main_async ;
 int queue_length ;
 int queue_pending ;
 size_t queue_position ;
 scalar_t__ realloc (TYPE_1__*,int) ;

void main_async_f(void* context, void (*cb)(void*))
{
 assert(cb);
 dispatch_semaphore_wait(async_queue_semaphore, DISPATCH_TIME_FOREVER);
 ++queue_pending;
 if (queue_pending > queue_length)
 {
  queue_length = (queue_length * 3 + 1) / 2;
  async_queue = (main_async_t*)realloc(async_queue, sizeof(main_async_t) * queue_length);


  queue_position = queue_pending - 1;
 }
 async_queue[queue_position].context = context;
 async_queue[queue_position].cb = cb;
 queue_position = (queue_position + 1) % queue_length;
 dispatch_semaphore_signal(async_queue_semaphore);
 ev_async_send(EV_DEFAULT_ &main_async);
}
