
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sys_mbox_t ;
typedef scalar_t__ UBaseType_t ;
struct TYPE_4__ {int os_mbox; } ;


 int LWIP_ASSERT (char*,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ uxQueueMessagesWaiting (int ) ;
 int vQueueDelete (int ) ;

void
sys_mbox_free(sys_mbox_t *mbox)
{
  if ((((void*)0) == mbox) || (((void*)0) == *mbox)) {
    return;
  }
  UBaseType_t msgs_waiting = uxQueueMessagesWaiting((*mbox)->os_mbox);
  LWIP_ASSERT("mbox quence not empty", msgs_waiting == 0);

  vQueueDelete((*mbox)->os_mbox);
  free(*mbox);
  *mbox = ((void*)0);
}
