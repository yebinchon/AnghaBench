
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int bd_addr; int link_type; } ;
struct TYPE_10__ {TYPE_1__ data; } ;
struct TYPE_12__ {TYPE_2__ esco; int * p_disc_cb; int * p_conn_cb; } ;
typedef TYPE_4__ tSCO_CONN ;
typedef int tBTM_SCO_CB ;
struct TYPE_13__ {int packet_types; } ;
typedef TYPE_5__ tBTM_ESCO_PARAMS ;
typedef size_t UINT16 ;
struct TYPE_11__ {TYPE_4__* sco_db; } ;
struct TYPE_14__ {TYPE_3__ sco_cb; } ;


 int BTM_LINK_TYPE_ESCO ;
 size_t BTM_MAX_SCO_LINKS ;
 int BTM_TRACE_DEBUG (char*,int ) ;
 int BTM_TRACE_ERROR (char*,size_t) ;
 int HCI_SUCCESS ;
 TYPE_7__ btm_cb ;
 int btm_esco_conn_rsp (size_t,int ,int ,TYPE_5__*) ;
 int btm_reject_sco_link (size_t) ;

void btm_accept_sco_link(UINT16 sco_inx, tBTM_ESCO_PARAMS *p_setup,
                         tBTM_SCO_CB *p_conn_cb, tBTM_SCO_CB *p_disc_cb)
{
    btm_reject_sco_link(sco_inx);

}
