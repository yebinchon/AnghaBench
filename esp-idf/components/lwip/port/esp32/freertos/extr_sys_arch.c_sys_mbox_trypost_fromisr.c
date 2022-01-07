
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sys_mbox_t ;
typedef int err_t ;
struct TYPE_3__ {int os_mbox; } ;
typedef scalar_t__ BaseType_t ;


 int ERR_MEM ;
 int ERR_NEED_SCHED ;
 int ERR_OK ;
 int LWIP_ASSERT (char*,int) ;
 scalar_t__ errQUEUE_FULL ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 scalar_t__ xQueueSendFromISR (int ,void**,scalar_t__*) ;

err_t
sys_mbox_trypost_fromisr(sys_mbox_t *mbox, void *msg)
{
  BaseType_t ret;
  BaseType_t xHigherPriorityTaskWoken = pdFALSE;

  ret = xQueueSendFromISR((*mbox)->os_mbox, &msg, &xHigherPriorityTaskWoken);
  if (ret == pdTRUE) {
    if (xHigherPriorityTaskWoken == pdTRUE) {
      return ERR_NEED_SCHED;
    }
    return ERR_OK;
  } else {
    LWIP_ASSERT("mbox trypost failed", ret == errQUEUE_FULL);
    return ERR_MEM;
  }
}
