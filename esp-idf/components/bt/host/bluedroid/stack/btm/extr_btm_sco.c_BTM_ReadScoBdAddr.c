
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * bd_addr; } ;
struct TYPE_8__ {TYPE_2__ data; } ;
struct TYPE_9__ {TYPE_3__ esco; scalar_t__ rem_bd_known; } ;
typedef TYPE_4__ tSCO_CONN ;
typedef int UINT8 ;
typedef size_t UINT16 ;
struct TYPE_6__ {TYPE_4__* sco_db; } ;
struct TYPE_10__ {TYPE_1__ sco_cb; } ;


 size_t BTM_MAX_SCO_LINKS ;
 TYPE_5__ btm_cb ;

UINT8 *BTM_ReadScoBdAddr (UINT16 sco_inx)
{
    return (((void*)0));

}
