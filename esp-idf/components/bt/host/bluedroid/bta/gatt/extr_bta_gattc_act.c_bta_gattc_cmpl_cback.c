
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tGATT_STATUS ;
typedef int tGATT_CL_COMPLETE ;
typedef scalar_t__ tGATTC_OPTYPE ;
struct TYPE_3__ {scalar_t__ transport; int bda; } ;
typedef TYPE_1__ tBTA_GATTC_CLCB ;
typedef int UINT16 ;


 int APPL_TRACE_DEBUG (char*,int ,scalar_t__,int ) ;
 int APPL_TRACE_ERROR (char*,int ) ;
 int BTA_ALL_APP_ID ;
 int BTA_ID_GATTC ;
 scalar_t__ BTA_TRANSPORT_BR_EDR ;
 scalar_t__ GATTC_OPTYPE_INDICATION ;
 scalar_t__ GATTC_OPTYPE_NOTIFICATION ;
 int bta_gattc_cmpl_sendmsg (int ,scalar_t__,int ,int *) ;
 TYPE_1__* bta_gattc_find_clcb_by_conn_id (int ) ;
 int bta_gattc_process_indicate (int ,scalar_t__,int *) ;
 int bta_sys_busy (int ,int ,int ) ;
 int bta_sys_idle (int ,int ,int ) ;

__attribute__((used)) static void bta_gattc_cmpl_cback(UINT16 conn_id, tGATTC_OPTYPE op, tGATT_STATUS status,
                                  tGATT_CL_COMPLETE *p_data)
{
    tBTA_GATTC_CLCB *p_clcb;
    APPL_TRACE_DEBUG("bta_gattc_cmpl_cback: conn_id = %d op = %d status = %d",
                     conn_id, op, status);


    if (op == GATTC_OPTYPE_NOTIFICATION || op == GATTC_OPTYPE_INDICATION) {
        bta_gattc_process_indicate(conn_id, op, p_data);
        return;
    }

    else if ((p_clcb = bta_gattc_find_clcb_by_conn_id(conn_id)) == ((void*)0)) {
        APPL_TRACE_ERROR("bta_gattc_cmpl_cback unknown conn_id =  %d, ignore data", conn_id);
        return;
    }


    if (p_clcb->transport == BTA_TRANSPORT_BR_EDR) {
        bta_sys_busy(BTA_ID_GATTC, BTA_ALL_APP_ID, p_clcb->bda);
        bta_sys_idle(BTA_ID_GATTC, BTA_ALL_APP_ID, p_clcb->bda);
    }

    bta_gattc_cmpl_sendmsg(conn_id, op, status, p_data);
}
