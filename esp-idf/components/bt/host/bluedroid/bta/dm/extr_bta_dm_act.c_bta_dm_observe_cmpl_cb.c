
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num_resp; } ;
typedef TYPE_2__ tBTM_INQUIRY_CMPL ;
struct TYPE_6__ {int num_resps; } ;
struct TYPE_8__ {TYPE_1__ inq_cmpl; } ;
typedef TYPE_3__ tBTA_DM_SEARCH ;
struct TYPE_9__ {int (* p_scan_cback ) (int ,TYPE_3__*) ;} ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTA_DM_INQ_CMPL_EVT ;
 TYPE_5__ bta_dm_search_cb ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static void bta_dm_observe_cmpl_cb (void *p_result)
{
    tBTA_DM_SEARCH data;

    APPL_TRACE_DEBUG("bta_dm_observe_cmpl_cb");

    data.inq_cmpl.num_resps = ((tBTM_INQUIRY_CMPL *)p_result)->num_resp;
    if (bta_dm_search_cb.p_scan_cback) {
        bta_dm_search_cb.p_scan_cback(BTA_DM_INQ_CMPL_EVT, &data);
    }
}
