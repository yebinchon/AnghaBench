
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int result; int bd_addr; } ;
typedef TYPE_1__ tBTA_DM_DI_DISC_CMPL ;
struct TYPE_7__ {int * p_di_db; } ;
struct TYPE_6__ {scalar_t__ state; int (* p_search_cback ) (int ,int *) ;int peer_bdaddr; } ;


 int BTA_DM_DI_DISC_CMPL_EVT ;
 scalar_t__ BTA_DM_SEARCH_IDLE ;
 int BTA_FAILURE ;
 int bdcpy (int ,int ) ;
 TYPE_4__ bta_dm_di_cb ;
 int bta_dm_search_cancel (int *) ;
 TYPE_3__ bta_dm_search_cb ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void bta_dm_disable_search_and_disc (void)
{

    tBTA_DM_DI_DISC_CMPL di_disc;

    if (bta_dm_search_cb.state != BTA_DM_SEARCH_IDLE) {
        bta_dm_search_cancel(((void*)0));
    }

    if (bta_dm_di_cb.p_di_db != ((void*)0)) {
        memset(&di_disc, 0, sizeof(tBTA_DM_DI_DISC_CMPL));
        bdcpy(di_disc.bd_addr, bta_dm_search_cb.peer_bdaddr);
        di_disc.result = BTA_FAILURE;

        bta_dm_di_cb.p_di_db = ((void*)0);
        bta_dm_search_cb.p_search_cback(BTA_DM_DI_DISC_CMPL_EVT, ((void*)0));
    }

}
