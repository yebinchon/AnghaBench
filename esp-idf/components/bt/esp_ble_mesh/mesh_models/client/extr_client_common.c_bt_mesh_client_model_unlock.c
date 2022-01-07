
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_model_mutex ;
 int osi_mutex_unlock (int *) ;

void bt_mesh_client_model_unlock(void)
{
    osi_mutex_unlock(&client_model_mutex);
}
