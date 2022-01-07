
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int app_id; int handle; } ;
struct TYPE_10__ {scalar_t__* str; scalar_t__ num; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_AG_VAL ;
struct TYPE_11__ {int features; int app_id; } ;
typedef TYPE_3__ tBTA_AG_SCB ;
typedef int tBTA_AG ;
struct TYPE_12__ {int (* p_cback ) (int ,int *) ;} ;
typedef scalar_t__ BOOLEAN ;


 int APPL_TRACE_DEBUG (char*) ;
 int BCM_STRNCPY_S (scalar_t__*,int,char*,size_t) ;
 size_t BTA_AG_AT_MAX_LEN ;
 int BTA_AG_AT_UNAT_EVT ;
 int BTA_AG_ERR_OP_NOT_SUPPORTED ;
 int BTA_AG_FEAT_UNAT ;
 TYPE_7__ bta_ag_cb ;
 int bta_ag_scb_to_idx (TYPE_3__*) ;
 int bta_ag_send_error (TYPE_3__*,int ) ;
 int bta_ag_send_ok (TYPE_3__*) ;
 int strlen (char*) ;
 int stub1 (int ,int *) ;

void bta_ag_at_err_cback(tBTA_AG_SCB *p_scb, BOOLEAN unknown, char *p_arg)
{
    tBTA_AG_VAL val;

    if(unknown && (!strlen(p_arg))) {
        APPL_TRACE_DEBUG("Empty AT cmd string received");
        bta_ag_send_ok(p_scb);
        return;
    }


    if (unknown && (p_scb->features & BTA_AG_FEAT_UNAT)) {
        val.hdr.handle = bta_ag_scb_to_idx(p_scb);
        val.hdr.app_id = p_scb->app_id;
        val.num = 0;
        BCM_STRNCPY_S(val.str, sizeof(val.str), p_arg, BTA_AG_AT_MAX_LEN);
        val.str[BTA_AG_AT_MAX_LEN] = 0;
        (*bta_ag_cb.p_cback)(BTA_AG_AT_UNAT_EVT, (tBTA_AG *) &val);
    } else {
        bta_ag_send_error(p_scb, BTA_AG_ERR_OP_NOT_SUPPORTED);
    }
}
