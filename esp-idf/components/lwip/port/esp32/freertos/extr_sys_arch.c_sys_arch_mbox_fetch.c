
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32_t ;
typedef TYPE_1__* sys_mbox_t ;
typedef int TickType_t ;
struct TYPE_3__ {int os_mbox; } ;
typedef scalar_t__ BaseType_t ;


 int LWIP_ASSERT (char*,int) ;
 int SYS_ARCH_TIMEOUT ;
 scalar_t__ errQUEUE_EMPTY ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 int portTICK_RATE_MS ;
 scalar_t__ xQueueReceive (int ,void**,int) ;

u32_t
sys_arch_mbox_fetch(sys_mbox_t *mbox, void **msg, u32_t timeout)
{
  BaseType_t ret;
  void *msg_dummy;

  if (msg == ((void*)0)) {
    msg = &msg_dummy;
  }

  if (timeout == 0) {

    ret = xQueueReceive((*mbox)->os_mbox, &(*msg), portMAX_DELAY);
    LWIP_ASSERT("mbox fetch failed", ret == pdTRUE);
  } else {
    TickType_t timeout_ticks = timeout / portTICK_RATE_MS;
    ret = xQueueReceive((*mbox)->os_mbox, &(*msg), timeout_ticks);
    if (ret == errQUEUE_EMPTY) {

      *msg = ((void*)0);
      return SYS_ARCH_TIMEOUT;
    }
    LWIP_ASSERT("mbox fetch failed", ret == pdTRUE);
  }

  return 0;
}
