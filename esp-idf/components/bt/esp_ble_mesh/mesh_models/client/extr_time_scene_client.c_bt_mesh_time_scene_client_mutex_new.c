
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int osi_mutex_new (int *) ;
 int time_scene_client_mutex ;

__attribute__((used)) static void bt_mesh_time_scene_client_mutex_new(void)
{
    static bool init;

    if (!init) {
        osi_mutex_new(&time_scene_client_mutex);
        init = 1;
    }
}
