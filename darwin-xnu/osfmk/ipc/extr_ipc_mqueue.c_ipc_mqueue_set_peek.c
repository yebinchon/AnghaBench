
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_6__ {int imq_set_queue; } ;


 int WQ_ITERATE_BREAK ;
 int imq_is_valid (TYPE_1__*) ;
 int imq_lock (TYPE_1__*) ;
 int imq_unlock (TYPE_1__*) ;
 int mqueue_peek_iterator ;
 int waitq_set_iterate_preposts (int *,int *,int ) ;

unsigned
ipc_mqueue_set_peek(ipc_mqueue_t mq)
{
 int ret;

 imq_lock(mq);






 if (!imq_is_valid(mq))
  return 1;

 ret = waitq_set_iterate_preposts(&mq->imq_set_queue, ((void*)0),
      mqueue_peek_iterator);

 imq_unlock(mq);

 return (ret == WQ_ITERATE_BREAK);
}
