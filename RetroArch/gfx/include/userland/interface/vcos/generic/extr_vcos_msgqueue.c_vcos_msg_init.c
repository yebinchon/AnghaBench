
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pool; int * waiter; int * next; int magic; } ;
typedef TYPE_1__ VCOS_MSG_T ;


 int MAGIC ;

void vcos_msg_init(VCOS_MSG_T *msg)
{
   msg->magic = MAGIC;
   msg->next = ((void*)0);
   msg->waiter = ((void*)0);
   msg->pool = ((void*)0);
}
