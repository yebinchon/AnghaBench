
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_6__ {int lock; int length; TYPE_2__* first; TYPE_2__** last; } ;
typedef TYPE_1__ MMAL_QUEUE_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 int mmal_queue_sanity_check (TYPE_1__*,int *) ;
 int vcos_assert (int ) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static MMAL_BUFFER_HEADER_T *mmal_queue_get_core(MMAL_QUEUE_T *queue)
{
   MMAL_BUFFER_HEADER_T * buffer;

   vcos_mutex_lock(&queue->lock);
   mmal_queue_sanity_check(queue, ((void*)0));
   buffer = queue->first;
   vcos_assert(buffer != ((void*)0));

   queue->first = buffer->next;
   if(!queue->first) queue->last = &queue->first;

   queue->length--;
   vcos_mutex_unlock(&queue->lock);

   return buffer;
}
