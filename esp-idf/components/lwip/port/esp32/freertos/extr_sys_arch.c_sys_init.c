
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERR_OK ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int esp_vfs_lwip_sockets_register () ;
 int g_lwip_protect_mutex ;
 int pthread_key_create (int *,int ) ;
 scalar_t__ sys_mutex_new (int *) ;
 int sys_thread_sem_free ;
 int sys_thread_sem_key ;

void
sys_init(void)
{
  if (ERR_OK != sys_mutex_new(&g_lwip_protect_mutex)) {
    ESP_LOGE(TAG, "sys_init: failed to init lwip protect mutex\n");
  }


  pthread_key_create(&sys_thread_sem_key, sys_thread_sem_free);

  esp_vfs_lwip_sockets_register();
}
