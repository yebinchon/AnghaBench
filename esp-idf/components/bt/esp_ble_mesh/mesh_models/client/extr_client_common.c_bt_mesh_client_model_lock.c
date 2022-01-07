
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int client_model_mutex ;
 int osi_mutex_lock (int *,int ) ;

void bt_mesh_client_model_lock(void)
{
    osi_mutex_lock(&client_model_mutex, OSI_MUTEX_MAX_TIMEOUT);
}
