
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * package_index; } ;


 TYPE_1__ ble_mesh_node_statistics ;
 int free (int *) ;

void ble_mesh_node_statistics_destroy(void)
{
    if (ble_mesh_node_statistics.package_index != ((void*)0)) {
        free(ble_mesh_node_statistics.package_index);
    }
}
