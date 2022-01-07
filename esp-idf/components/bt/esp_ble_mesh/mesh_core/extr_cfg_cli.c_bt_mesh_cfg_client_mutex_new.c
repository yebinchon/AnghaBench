
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg_client_mutex ;
 int osi_mutex_new (int *) ;

__attribute__((used)) static void bt_mesh_cfg_client_mutex_new(void)
{
    static bool init;

    if (!init) {
        osi_mutex_new(&cfg_client_mutex);
        init = 1;
    }
}
