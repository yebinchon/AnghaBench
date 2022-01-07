
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int retrans_effort; int max_latency; } ;
struct TYPE_9__ {TYPE_3__ setup; } ;
struct TYPE_11__ {TYPE_2__ esco; } ;
typedef TYPE_4__ tSCO_CONN ;
typedef int tBTM_STATUS ;
struct TYPE_12__ {size_t packet_types; int retrans_effort; int max_latency; } ;
typedef TYPE_5__ tBTM_CHG_ESCO_PARAMS ;
typedef size_t UINT16 ;
struct TYPE_8__ {TYPE_4__* sco_db; } ;
struct TYPE_13__ {TYPE_1__ sco_cb; } ;


 int BTM_ChangeEScoLinkParms (size_t,TYPE_5__*) ;
 size_t BTM_MAX_SCO_LINKS ;
 int BTM_UNKNOWN_ADDR ;
 TYPE_6__ btm_cb ;

tBTM_STATUS BTM_SetScoPacketTypes (UINT16 sco_inx, UINT16 pkt_types)
{
    return (BTM_UNKNOWN_ADDR);

}
