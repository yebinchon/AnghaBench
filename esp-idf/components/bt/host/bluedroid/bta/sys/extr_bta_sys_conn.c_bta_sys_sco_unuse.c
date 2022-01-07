
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int (* p_sco_cb ) (int ,int ,int ,int ) ;} ;
typedef int BD_ADDR ;


 int BTA_SYS_SCO_CLOSE ;
 int BTM_GetNumScoLinks () ;
 int UNUSED (int ) ;
 TYPE_1__ bta_sys_cb ;
 int stub1 (int ,int ,int ,int ) ;

void bta_sys_sco_unuse(UINT8 id, UINT8 app_id, BD_ADDR peer_addr)
{
    UINT8 num_sco_links;
    UNUSED(id);

    if ((bta_sys_cb.p_sco_cb)) {
        num_sco_links = BTM_GetNumScoLinks();
        bta_sys_cb.p_sco_cb(BTA_SYS_SCO_CLOSE, num_sco_links, app_id, peer_addr);
    }
}
