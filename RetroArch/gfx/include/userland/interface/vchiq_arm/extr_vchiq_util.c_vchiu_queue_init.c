
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int * storage; int push; int pop; scalar_t__ write; scalar_t__ read; } ;
typedef TYPE_1__ VCHIU_QUEUE_T ;
typedef int VCHIQ_HEADER_T ;


 int VCOS_FUNCTION ;
 int is_pow2 (int) ;
 int vchiu_queue_delete (TYPE_1__*) ;
 int vcos_assert (int ) ;
 int vcos_event_create (int *,char*) ;
 int * vcos_malloc (int,int ) ;

int vchiu_queue_init(VCHIU_QUEUE_T *queue, int size)
{
   vcos_assert(is_pow2(size));

   queue->size = size;
   queue->read = 0;
   queue->write = 0;

   vcos_event_create(&queue->pop, "vchiu");
   vcos_event_create(&queue->push, "vchiu");

   queue->storage = vcos_malloc(size * sizeof(VCHIQ_HEADER_T *), VCOS_FUNCTION);
   if (queue->storage == ((void*)0))
   {
      vchiu_queue_delete(queue);
      return 0;
   }
   return 1;
}
