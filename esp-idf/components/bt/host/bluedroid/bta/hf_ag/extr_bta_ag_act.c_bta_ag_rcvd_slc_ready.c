
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
struct TYPE_2__ {scalar_t__ parse_mode; } ;


 int APPL_TRACE_DEBUG (char*,int ) ;
 scalar_t__ BTA_AG_PASS_THROUGH ;
 int UNUSED (int *) ;
 TYPE_1__ bta_ag_cb ;
 int bta_ag_scb_to_idx (int *) ;
 int bta_ag_svc_conn_open (int *,int *) ;

void bta_ag_rcvd_slc_ready(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UNUSED(p_data);
    APPL_TRACE_DEBUG("bta_ag_rcvd_slc_ready: handle = %d", bta_ag_scb_to_idx(p_scb));

    if (bta_ag_cb.parse_mode == BTA_AG_PASS_THROUGH) {

        bta_ag_svc_conn_open(p_scb, ((void*)0));
    }
}
