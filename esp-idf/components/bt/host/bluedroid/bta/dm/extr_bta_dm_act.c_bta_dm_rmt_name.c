
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* bd_name; } ;
struct TYPE_9__ {TYPE_1__ disc_res; } ;
struct TYPE_10__ {TYPE_2__ result; } ;
struct TYPE_12__ {TYPE_3__ rem_name; } ;
typedef TYPE_5__ tBTA_DM_MSG ;
struct TYPE_13__ {int peer_bdaddr; TYPE_4__* p_btm_inq_info; } ;
struct TYPE_11__ {int appl_knows_rem_name; } ;


 int APPL_TRACE_DEBUG (char*) ;
 int TRUE ;
 int bta_dm_discover_device (int ) ;
 TYPE_6__ bta_dm_search_cb ;

void bta_dm_rmt_name (tBTA_DM_MSG *p_data)
{
    APPL_TRACE_DEBUG("bta_dm_rmt_name");

    if ( p_data->rem_name.result.disc_res.bd_name[0] && bta_dm_search_cb.p_btm_inq_info) {
        bta_dm_search_cb.p_btm_inq_info->appl_knows_rem_name = TRUE;
    }

    bta_dm_discover_device(bta_dm_search_cb.peer_bdaddr);

}
