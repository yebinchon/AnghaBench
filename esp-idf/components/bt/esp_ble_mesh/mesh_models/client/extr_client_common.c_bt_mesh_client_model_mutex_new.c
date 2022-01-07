
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_model_mutex ;
 int osi_mutex_new (int *) ;

__attribute__((used)) static void bt_mesh_client_model_mutex_new(void)
{
    static bool init;

    if (!init) {
        osi_mutex_new(&client_model_mutex);
        init = 1;
    }
}
