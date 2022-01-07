
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int len; int value; int handle; } ;
struct TYPE_11__ {TYPE_1__ att_value; int handle; } ;
typedef TYPE_3__ tGATT_CL_COMPLETE ;
struct TYPE_12__ {int conn_id; int value; int bda; int len; int is_notify; } ;
typedef TYPE_4__ tBTA_GATTC_NOTIFY ;
struct TYPE_13__ {TYPE_2__* p_rcb; int bta_conn_id; int bda; } ;
typedef TYPE_5__ tBTA_GATTC_CLCB ;
typedef int tBTA_GATTC ;
typedef scalar_t__ UINT8 ;
struct TYPE_10__ {int (* p_cback ) (int ,int *) ;} ;


 int APPL_TRACE_DEBUG (char*,int ,...) ;
 int BTA_GATTC_NOTIF_EVT ;
 int FALSE ;
 scalar_t__ GATTC_OPTYPE_INDICATION ;
 int TRUE ;
 int bdcpy (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int stub1 (int ,int *) ;

void bta_gattc_proc_other_indication(tBTA_GATTC_CLCB *p_clcb, UINT8 op,
                                     tGATT_CL_COMPLETE *p_data,
                                     tBTA_GATTC_NOTIFY *p_notify)
{
    APPL_TRACE_DEBUG("bta_gattc_proc_other_indication check p_data->att_value.handle=%d p_data->handle=%d",
                       p_data->att_value.handle, p_data->handle);
    APPL_TRACE_DEBUG("is_notify %d", p_notify->is_notify);

    p_notify->is_notify = (op == GATTC_OPTYPE_INDICATION) ? FALSE : TRUE;
    p_notify->len = p_data->att_value.len;
    bdcpy(p_notify->bda, p_clcb->bda);
    memcpy(p_notify->value, p_data->att_value.value, p_data->att_value.len);
    p_notify->conn_id = p_clcb->bta_conn_id;

    if (p_clcb->p_rcb->p_cback) {
        (*p_clcb->p_rcb->p_cback)(BTA_GATTC_NOTIF_EVT, (tBTA_GATTC *)p_notify);
    }

}
