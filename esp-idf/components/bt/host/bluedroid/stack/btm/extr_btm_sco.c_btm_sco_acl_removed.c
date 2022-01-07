
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bd_addr; } ;
struct TYPE_7__ {int * p_esco_cback; TYPE_1__ data; } ;
struct TYPE_9__ {scalar_t__ state; int (* p_disc_cb ) (scalar_t__) ;TYPE_2__ esco; scalar_t__ rem_bd_known; } ;
typedef TYPE_4__ tSCO_CONN ;
typedef scalar_t__ UINT16 ;
struct TYPE_8__ {TYPE_4__* sco_db; } ;
struct TYPE_10__ {TYPE_3__ sco_cb; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_MAX_SCO_LINKS ;
 scalar_t__ SCO_ST_UNUSED ;
 TYPE_5__ btm_cb ;
 int btm_sco_flush_sco_data (scalar_t__) ;
 int memcmp (int ,int ,int ) ;
 int stub1 (scalar_t__) ;

void btm_sco_acl_removed (BD_ADDR bda)
{
}
