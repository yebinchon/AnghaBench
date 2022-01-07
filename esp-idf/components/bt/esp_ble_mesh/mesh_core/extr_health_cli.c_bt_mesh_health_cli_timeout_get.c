
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32_t ;


 int health_msg_timeout ;

s32_t bt_mesh_health_cli_timeout_get(void)
{
    return health_msg_timeout;
}
