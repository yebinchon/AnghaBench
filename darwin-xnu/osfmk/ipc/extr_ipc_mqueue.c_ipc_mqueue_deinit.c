
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ipc_mqueue_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int imq_wait_queue; int imq_set_queue; } ;


 scalar_t__ imq_is_set (TYPE_1__*) ;
 int waitq_deinit (int *) ;
 int waitq_set_deinit (int *) ;

void ipc_mqueue_deinit(
 ipc_mqueue_t mqueue)
{
 boolean_t is_set = imq_is_set(mqueue);

 if (is_set)
  waitq_set_deinit(&mqueue->imq_set_queue);
 else
  waitq_deinit(&mqueue->imq_wait_queue);
}
