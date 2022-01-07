
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int (* p_sco_cb ) (int ,int,int ,int ) ;} ;
typedef int BD_ADDR ;


 int BTA_SYS_SCO_OPEN ;
 int UNUSED (int ) ;
 TYPE_1__ bta_sys_cb ;
 int stub1 (int ,int,int ,int ) ;

void bta_sys_sco_use(UINT8 id, UINT8 app_id, BD_ADDR peer_addr)
{
    UNUSED(id);


    if (bta_sys_cb.p_sco_cb) {

        bta_sys_cb.p_sco_cb(BTA_SYS_SCO_OPEN, 1, app_id, peer_addr);
    }
}
