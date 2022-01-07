
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int light_server_mutex ;
 int osi_mutex_unlock (int *) ;

void bt_mesh_light_server_unlock(void)
{
    osi_mutex_unlock(&light_server_mutex);
}
