
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sys_mbox_t ;
struct sys_mbox_s {int dummy; } ;
typedef int err_t ;
struct TYPE_5__ {int * os_mbox; int * owner; } ;


 int ERR_MEM ;
 int ERR_OK ;
 int ESP_THREAD_SAFE_DEBUG ;
 int LWIP_DEBUGF (int ,char*) ;
 int free (TYPE_1__*) ;
 TYPE_1__* mem_malloc (int) ;
 int * xQueueCreate (int,int) ;

err_t
sys_mbox_new(sys_mbox_t *mbox, int size)
{
  *mbox = mem_malloc(sizeof(struct sys_mbox_s));
  if (*mbox == ((void*)0)){
    LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("fail to new *mbox\n"));
    return ERR_MEM;
  }

  (*mbox)->os_mbox = xQueueCreate(size, sizeof(void *));

  if ((*mbox)->os_mbox == ((void*)0)) {
    LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("fail to new (*mbox)->os_mbox\n"));
    free(*mbox);
    return ERR_MEM;
  }





  LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("new *mbox ok mbox=%p os_mbox=%p\n", *mbox, (*mbox)->os_mbox));
  return ERR_OK;
}
