
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int osi_mutex_lock (int *,int ) ;
 int time_scene_server_mutex ;

void bt_mesh_time_scene_server_lock(void)
{
    osi_mutex_lock(&time_scene_server_mutex, OSI_MUTEX_MAX_TIMEOUT);
}
