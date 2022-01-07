
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sys_mbox_t ;
struct TYPE_3__ {int os_mbox; } ;
typedef scalar_t__ BaseType_t ;


 int LWIP_ASSERT (char*,int) ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 scalar_t__ xQueueSendToBack (int ,void**,int ) ;

void
sys_mbox_post(sys_mbox_t *mbox, void *msg)
{
  BaseType_t ret = xQueueSendToBack((*mbox)->os_mbox, &msg, portMAX_DELAY);
  LWIP_ASSERT("mbox post failed", ret == pdTRUE);
}
