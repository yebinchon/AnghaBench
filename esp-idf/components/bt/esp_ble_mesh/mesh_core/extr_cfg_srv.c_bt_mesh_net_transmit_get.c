
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_2__ {int net_transmit; } ;


 TYPE_1__* conf ;

u8_t bt_mesh_net_transmit_get(void)
{
    if (conf) {
        return conf->net_transmit;
    }

    return 0;
}
