
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t packet_types; } ;
struct TYPE_8__ {TYPE_2__ setup; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_3__ esco; } ;
typedef TYPE_4__ tSCO_CONN ;
typedef size_t UINT16 ;
struct TYPE_6__ {TYPE_4__* sco_db; } ;
struct TYPE_10__ {TYPE_1__ sco_cb; } ;


 size_t BTM_MAX_SCO_LINKS ;
 scalar_t__ SCO_ST_CONNECTED ;
 TYPE_5__ btm_cb ;

UINT16 BTM_ReadScoPacketTypes (UINT16 sco_inx)
{
    return (0);

}
