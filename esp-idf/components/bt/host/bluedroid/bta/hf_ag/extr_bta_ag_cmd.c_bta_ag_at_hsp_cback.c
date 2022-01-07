
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int app_id; int handle; } ;
struct TYPE_9__ {size_t num; scalar_t__* str; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_AG_VAL ;
struct TYPE_10__ {int app_id; } ;
typedef TYPE_3__ tBTA_AG_SCB ;
typedef int tBTA_AG ;
typedef int UINT8 ;
typedef size_t UINT16 ;
struct TYPE_11__ {int (* p_cback ) (int ,int *) ;} ;
typedef scalar_t__ INT16 ;


 int APPL_TRACE_DEBUG (char*,size_t,int ,scalar_t__,char*) ;
 int BCM_STRNCPY_S (scalar_t__*,int,char*,size_t) ;
 size_t BTA_AG_AT_MAX_LEN ;
 TYPE_6__ bta_ag_cb ;
 int * bta_ag_hsp_cb_evt ;
 int bta_ag_scb_to_idx (TYPE_3__*) ;
 int bta_ag_send_ok (TYPE_3__*) ;
 int stub1 (int ,int *) ;

void bta_ag_at_hsp_cback(tBTA_AG_SCB *p_scb, UINT16 cmd, UINT8 arg_type,
                                char *p_arg, INT16 int_arg)
{
    tBTA_AG_VAL val;
    APPL_TRACE_DEBUG("AT cmd:%d arg_type:%d arg:%d arg:%s", cmd, arg_type, int_arg, p_arg);


    bta_ag_send_ok(p_scb);
    val.hdr.handle = bta_ag_scb_to_idx(p_scb);
    val.hdr.app_id = p_scb->app_id;
    val.num = (UINT16) int_arg;
    BCM_STRNCPY_S(val.str, sizeof(val.str), p_arg, BTA_AG_AT_MAX_LEN);
    val.str[BTA_AG_AT_MAX_LEN] = 0;

    (*bta_ag_cb.p_cback)(bta_ag_hsp_cb_evt[cmd], (tBTA_AG *) &val);
}
