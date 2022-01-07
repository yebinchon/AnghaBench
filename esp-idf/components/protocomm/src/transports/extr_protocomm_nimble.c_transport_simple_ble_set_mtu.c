
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
struct ble_gap_event {TYPE_1__ mtu; } ;
struct TYPE_4__ {int gatt_mtu; } ;


 TYPE_2__* protoble_internal ;

__attribute__((used)) static void transport_simple_ble_set_mtu(struct ble_gap_event *event, void *arg)
{
    protoble_internal->gatt_mtu = event->mtu.value;
    return;
}
