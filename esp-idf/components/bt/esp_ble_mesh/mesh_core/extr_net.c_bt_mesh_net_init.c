
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int local_work; int ivu_timer; } ;


 TYPE_1__ bt_mesh ;
 int bt_mesh_net_local ;
 int ivu_refresh ;
 int k_delayed_work_init (int *,int ) ;
 int k_work_init (int *,int ) ;

void bt_mesh_net_init(void)
{
    k_delayed_work_init(&bt_mesh.ivu_timer, ivu_refresh);

    k_work_init(&bt_mesh.local_work, bt_mesh_net_local);
}
