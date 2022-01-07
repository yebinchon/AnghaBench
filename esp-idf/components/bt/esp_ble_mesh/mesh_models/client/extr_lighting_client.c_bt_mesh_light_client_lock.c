
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int light_client_mutex ;
 int osi_mutex_lock (int *,int ) ;

__attribute__((used)) static void bt_mesh_light_client_lock(void)
{
    osi_mutex_lock(&light_client_mutex, OSI_MUTEX_MAX_TIMEOUT);
}
