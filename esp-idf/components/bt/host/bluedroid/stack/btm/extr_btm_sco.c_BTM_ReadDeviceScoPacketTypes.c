
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int btm_sco_pkt_types_supported; } ;


 TYPE_1__ btm_cb ;

UINT16 BTM_ReadDeviceScoPacketTypes (void)
{
    return (btm_cb.btm_sco_pkt_types_supported);
}
