
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int osi_mutex_unlock (int *) ;
 int time_scene_server_mutex ;

void bt_mesh_time_scene_server_unlock(void)
{
    osi_mutex_unlock(&time_scene_server_mutex);
}
