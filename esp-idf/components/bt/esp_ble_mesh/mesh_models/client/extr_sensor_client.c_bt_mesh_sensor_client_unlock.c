
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int osi_mutex_unlock (int *) ;
 int sensor_client_mutex ;

__attribute__((used)) static void bt_mesh_sensor_client_unlock(void)
{
    osi_mutex_unlock(&sensor_client_mutex);
}
