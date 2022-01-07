
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sys_mbox_t ;
typedef int err_t ;
struct TYPE_3__ {int os_mbox; } ;


 int ERR_MEM ;
 int ERR_OK ;
 int ESP_THREAD_SAFE_DEBUG ;
 int LWIP_DEBUGF (int ,char*) ;
 scalar_t__ pdTRUE ;
 scalar_t__ xQueueSend (int ,void**,int ) ;

err_t
sys_mbox_trypost(sys_mbox_t *mbox, void *msg)
{
  err_t xReturn;

  if (xQueueSend((*mbox)->os_mbox, &msg, 0) == pdTRUE) {
    xReturn = ERR_OK;
  } else {
    LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("trypost mbox=%p fail\n", (*mbox)->os_mbox));
    xReturn = ERR_MEM;
  }

  return xReturn;
}
