
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rmt_name_timer_ent; int remname_bda; int remname_active; } ;
typedef TYPE_1__ tBTM_INQUIRY_VAR_ST ;
struct TYPE_4__ {TYPE_1__ btm_inq_vars; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int FALSE ;
 int GAP_BleCancelReadPeerDevName (int ) ;
 int TRUE ;
 TYPE_2__ btm_cb ;
 int btu_stop_timer (int *) ;
 int memset (int ,int ,int ) ;

BOOLEAN btm_ble_cancel_remote_name(BD_ADDR remote_bda)
{
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;
    BOOLEAN status = TRUE;





    p_inq->remname_active = FALSE;
    memset(p_inq->remname_bda, 0, BD_ADDR_LEN);
    btu_stop_timer(&p_inq->rmt_name_timer_ent);

    return status;
}
