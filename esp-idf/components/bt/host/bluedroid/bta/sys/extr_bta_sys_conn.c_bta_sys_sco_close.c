
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_2__ {int (* ppm_cb ) (int ,scalar_t__,scalar_t__,int ) ;int (* p_sco_cb ) (int ,scalar_t__,scalar_t__,int ) ;} ;
typedef int BD_ADDR ;


 scalar_t__ BTA_ID_AG ;
 int BTA_SYS_SCO_CLOSE ;
 scalar_t__ BTM_GetNumScoLinks () ;
 TYPE_1__ bta_sys_cb ;
 int stub1 (int ,scalar_t__,scalar_t__,int ) ;
 int stub2 (int ,scalar_t__,scalar_t__,int ) ;

void bta_sys_sco_close(UINT8 id, UINT8 app_id, BD_ADDR peer_addr)
{
    UINT8 num_sco_links;

    if ((id != BTA_ID_AG) && (bta_sys_cb.p_sco_cb)) {
        num_sco_links = BTM_GetNumScoLinks();
        bta_sys_cb.p_sco_cb(BTA_SYS_SCO_CLOSE, num_sco_links, app_id, peer_addr);
    }

    if (bta_sys_cb.ppm_cb) {
        bta_sys_cb.ppm_cb(BTA_SYS_SCO_CLOSE, id, app_id, peer_addr);
    }
}
