
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* p_db; int e_hdl; int s_hdl; int type; int service_instance; int app_uuid; scalar_t__ in_use; } ;
typedef TYPE_3__ tGATT_SR_REG ;
struct TYPE_9__ {int svc_buffer; } ;
struct TYPE_8__ {int e_handle; int s_handle; scalar_t__ is_primary; int svc_inst; int app_uuid128; } ;
struct TYPE_11__ {TYPE_2__ svc_db; TYPE_1__ asgn_range; } ;
typedef TYPE_4__ tGATT_HDL_LIST_ELEM ;
typedef int tBT_UUID ;
typedef scalar_t__ UINT8 ;
struct TYPE_12__ {TYPE_3__* sr_reg; } ;


 scalar_t__ GATT_MAX_SR_PROFILES ;
 int GATT_TRACE_DEBUG (char*,int ) ;
 int GATT_UUID_PRI_SERVICE ;
 int GATT_UUID_SEC_SERVICE ;
 scalar_t__ TRUE ;
 int fixed_queue_length (int ) ;
 TYPE_7__ gatt_cb ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_3__*,int ,int) ;

UINT8 gatt_sr_alloc_rcb(tGATT_HDL_LIST_ELEM *p_list )
{
    UINT8 ii = 0;
    tGATT_SR_REG *p_sreg = ((void*)0);


    for (ii = 0, p_sreg = gatt_cb.sr_reg; ii < GATT_MAX_SR_PROFILES; ii++, p_sreg++) {
        if (!p_sreg->in_use) {
            memset (p_sreg, 0, sizeof(tGATT_SR_REG));

            p_sreg->in_use = TRUE;
            memcpy (&p_sreg->app_uuid, &p_list->asgn_range.app_uuid128, sizeof(tBT_UUID));

            p_sreg->service_instance = p_list->asgn_range.svc_inst;
            p_sreg->type = p_list->asgn_range.is_primary ? GATT_UUID_PRI_SERVICE : GATT_UUID_SEC_SERVICE;
            p_sreg->s_hdl = p_list->asgn_range.s_handle;
            p_sreg->e_hdl = p_list->asgn_range.e_handle;
            p_sreg->p_db = &p_list->svc_db;

            GATT_TRACE_DEBUG ("total buffer in db [%d]", fixed_queue_length(p_sreg->p_db->svc_buffer));
            break;
        }
    }

    return ii;
}
