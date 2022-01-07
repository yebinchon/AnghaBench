
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tBTM_ESCO_PARAMS ;
typedef int UINT8 ;
typedef size_t UINT16 ;
struct TYPE_9__ {TYPE_3__* sco_db; } ;
struct TYPE_10__ {TYPE_4__ sco_cb; } ;
struct TYPE_6__ {int bd_addr; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_8__ {scalar_t__ state; TYPE_2__ esco; } ;


 size_t BTM_MAX_SCO_LINKS ;
 scalar_t__ SCO_ST_W4_CONN_RSP ;
 TYPE_5__ btm_cb ;
 int btm_esco_conn_rsp (size_t,int ,int ,int *) ;

void BTM_EScoConnRsp (UINT16 sco_inx, UINT8 hci_status, tBTM_ESCO_PARAMS *p_parms)
{
}
