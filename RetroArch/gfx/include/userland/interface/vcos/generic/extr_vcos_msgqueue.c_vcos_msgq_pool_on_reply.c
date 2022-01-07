
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VCOS_MSG_WAITER_T ;
struct TYPE_4__ {scalar_t__ magic; } ;
typedef TYPE_1__ VCOS_MSG_T ;


 scalar_t__ MAGIC ;
 int vcos_assert (int) ;
 int vcos_msgq_pool_free (TYPE_1__*) ;
 int vcos_unused (int *) ;

__attribute__((used)) static void vcos_msgq_pool_on_reply(VCOS_MSG_WAITER_T *waiter,
                                    VCOS_MSG_T *msg)
{
   vcos_unused(waiter);
   vcos_assert(msg->magic == MAGIC);
   vcos_msgq_pool_free(msg);
}
