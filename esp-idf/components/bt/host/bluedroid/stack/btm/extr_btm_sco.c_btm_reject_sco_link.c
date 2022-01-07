
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT16 ;
struct TYPE_9__ {TYPE_3__* sco_db; } ;
struct TYPE_10__ {TYPE_4__ sco_cb; } ;
struct TYPE_6__ {int bd_addr; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_8__ {TYPE_2__ esco; } ;


 int HCI_ERR_HOST_REJECT_RESOURCES ;
 TYPE_5__ btm_cb ;
 int btm_esco_conn_rsp (size_t,int ,int ,int *) ;

void btm_reject_sco_link( UINT16 sco_inx )
{
    btm_esco_conn_rsp(sco_inx, HCI_ERR_HOST_REJECT_RESOURCES,
                      btm_cb.sco_cb.sco_db[sco_inx].esco.data.bd_addr, ((void*)0));
}
