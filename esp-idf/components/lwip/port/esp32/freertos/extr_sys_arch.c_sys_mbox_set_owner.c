
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sys_mbox_t ;
struct TYPE_3__ {void* owner; } ;


 int ESP_THREAD_SAFE_DEBUG ;
 int LWIP_DEBUGF (int ,char*) ;

void
sys_mbox_set_owner(sys_mbox_t *mbox, void* owner)
{
  if (mbox && *mbox) {
    (*mbox)->owner = owner;
    LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("set mbox=%p owner=%p", *mbox, owner));
  }
}
