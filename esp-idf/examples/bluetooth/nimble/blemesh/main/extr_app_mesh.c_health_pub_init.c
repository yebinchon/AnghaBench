
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; } ;


 int BT_MESH_HEALTH_FAULT_MSG (int ) ;
 TYPE_1__ health_pub ;

__attribute__((used)) static void
health_pub_init(void)
{
    health_pub.msg = BT_MESH_HEALTH_FAULT_MSG(0);
}
