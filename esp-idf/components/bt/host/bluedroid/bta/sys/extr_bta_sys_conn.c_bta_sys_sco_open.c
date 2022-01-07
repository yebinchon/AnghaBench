
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_2__ {int (* ppm_cb ) (int ,scalar_t__,scalar_t__,int ) ;int (* p_sco_cb ) (int ,int,scalar_t__,int ) ;} ;
typedef int BD_ADDR ;


 scalar_t__ BTA_ID_AG ;
 int BTA_SYS_SCO_OPEN ;
 TYPE_1__ bta_sys_cb ;
 int stub1 (int ,int,scalar_t__,int ) ;
 int stub2 (int ,scalar_t__,scalar_t__,int ) ;

void bta_sys_sco_open(UINT8 id, UINT8 app_id, BD_ADDR peer_addr)
{

    if ((id != BTA_ID_AG) && (bta_sys_cb.p_sco_cb)) {

        bta_sys_cb.p_sco_cb(BTA_SYS_SCO_OPEN, 1, app_id, peer_addr);
    }

    if (bta_sys_cb.ppm_cb) {
        bta_sys_cb.ppm_cb(BTA_SYS_SCO_OPEN, id, app_id, peer_addr);
    }
}
