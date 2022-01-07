
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tBTA_DM_SEARCH ;
struct TYPE_8__ {scalar_t__ offset; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_MSG ;
struct TYPE_10__ {int result; int num_record; int bd_addr; } ;
typedef TYPE_3__ tBTA_DM_DI_DISC_CMPL ;
struct TYPE_12__ {int * p_di_db; } ;
struct TYPE_11__ {int (* p_search_cback ) (int ,int *) ;int peer_bdaddr; } ;


 int BTA_DM_DI_DISC_CMPL_EVT ;
 int BTA_FAILURE ;
 scalar_t__ SDP_DB_FULL ;
 int SDP_GetNumDiRecords (int *) ;
 scalar_t__ SDP_SUCCESS ;
 int bdcpy (int ,int ) ;
 TYPE_7__ bta_dm_di_cb ;
 TYPE_5__ bta_dm_search_cb ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (int ,int *) ;

void bta_dm_di_disc_cmpl(tBTA_DM_MSG *p_data)
{
    tBTA_DM_DI_DISC_CMPL di_disc;

    memset(&di_disc, 0, sizeof(tBTA_DM_DI_DISC_CMPL));
    bdcpy(di_disc.bd_addr, bta_dm_search_cb.peer_bdaddr);

    if ((p_data->hdr.offset == SDP_SUCCESS)
            || (p_data->hdr.offset == SDP_DB_FULL)) {
        di_disc.num_record = SDP_GetNumDiRecords(bta_dm_di_cb.p_di_db);
    } else {
        di_disc.result = BTA_FAILURE;
    }

    bta_dm_di_cb.p_di_db = ((void*)0);
    bta_dm_search_cb.p_search_cback(BTA_DM_DI_DISC_CMPL_EVT, (tBTA_DM_SEARCH *) &di_disc);
}
