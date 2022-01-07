
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_ROLE_SWITCH_CMPL ;
typedef int tBTA_DM_MSG ;
struct TYPE_3__ {int rs_res; } ;
struct TYPE_4__ {scalar_t__ rs_event; TYPE_1__ search_msg; } ;


 int APPL_TRACE_WARNING (char*,scalar_t__) ;
 scalar_t__ BTA_DM_API_SEARCH_EVT ;
 int BTA_DM_RS_OK ;
 int UNUSED (int *) ;
 TYPE_2__ bta_dm_cb ;
 int bta_dm_search_start (int *) ;

__attribute__((used)) static void bta_dm_rs_cback (tBTM_ROLE_SWITCH_CMPL *p1)
{
    UNUSED(p1);
    APPL_TRACE_WARNING("bta_dm_rs_cback:%d", bta_dm_cb.rs_event);
    if (bta_dm_cb.rs_event == BTA_DM_API_SEARCH_EVT) {
        bta_dm_cb.search_msg.rs_res = BTA_DM_RS_OK;
        bta_dm_cb.rs_event = 0;
        bta_dm_search_start((tBTA_DM_MSG *)&bta_dm_cb.search_msg);
    }
}
