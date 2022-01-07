
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int num_dis; } ;
struct TYPE_6__ {TYPE_1__ inq_dis; } ;
typedef TYPE_2__ tBTA_DM_SEARCH ;
struct TYPE_7__ {int (* p_scan_cback ) (int ,TYPE_2__*) ;} ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTA_DM_INQ_DISCARD_NUM_EVT ;
 TYPE_4__ bta_dm_search_cb ;
 int stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static void bta_dm_observe_discard_cb (uint32_t num_dis)
{
    tBTA_DM_SEARCH data;

    APPL_TRACE_DEBUG("bta_dm_observe_discard_cb");

    data.inq_dis.num_dis = num_dis;
    if (bta_dm_search_cb.p_scan_cback) {
        bta_dm_search_cb.p_scan_cback(BTA_DM_INQ_DISCARD_NUM_EVT, &data);
    }
}
