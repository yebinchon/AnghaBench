
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_mesh_addr_t ;


 int const* dev_addr ;

const bt_mesh_addr_t *bt_mesh_pba_get_addr(void)
{
    return dev_addr;
}
