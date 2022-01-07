
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int health_client_mutex ;
 int osi_mutex_unlock (int *) ;

__attribute__((used)) static void bt_mesh_health_client_unlock(void)
{
    osi_mutex_unlock(&health_client_mutex);
}
