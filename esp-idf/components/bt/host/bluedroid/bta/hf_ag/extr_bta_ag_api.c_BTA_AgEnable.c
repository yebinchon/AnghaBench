
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tBTA_STATUS ;
typedef int tBTA_AG_PARSE_MODE ;
typedef int tBTA_AG_CBACK ;
struct TYPE_6__ {int event; } ;
struct TYPE_8__ {int * p_cback; int parse_mode; TYPE_1__ hdr; } ;
typedef TYPE_3__ tBTA_AG_API_ENABLE ;
typedef size_t UINT8 ;
struct TYPE_9__ {TYPE_2__* scb; } ;
struct TYPE_7__ {scalar_t__ in_use; } ;


 int APPL_TRACE_ERROR (char*) ;
 int BTA_AG_API_ENABLE_EVT ;
 size_t BTA_AG_NUM_SCB ;
 int BTA_FAILURE ;
 int BTA_ID_AG ;
 int BTA_SUCCESS ;
 TYPE_5__ bta_ag_cb ;
 int bta_ag_reg ;
 int bta_sys_register (int ,int *) ;
 int bta_sys_sendmsg (TYPE_3__*) ;
 scalar_t__ osi_malloc (int) ;

tBTA_STATUS BTA_AgEnable(tBTA_AG_PARSE_MODE parse_mode, tBTA_AG_CBACK *p_cback)
{
    tBTA_AG_API_ENABLE *p_buf;
    UINT8 idx;


    for (idx = 0; idx < BTA_AG_NUM_SCB; idx++) {
        if (bta_ag_cb.scb[idx].in_use) {
            APPL_TRACE_ERROR ("BTA_AgEnable: FAILED, AG already enabled.");
            return BTA_FAILURE;
        }
    }

    bta_sys_register(BTA_ID_AG, &bta_ag_reg);

    if ((p_buf = (tBTA_AG_API_ENABLE *) osi_malloc(sizeof(tBTA_AG_API_ENABLE))) != ((void*)0)) {
        p_buf->hdr.event = BTA_AG_API_ENABLE_EVT;
        p_buf->parse_mode = parse_mode;
        p_buf->p_cback = p_cback;
        bta_sys_sendmsg(p_buf);
    }
    return BTA_SUCCESS;
}
