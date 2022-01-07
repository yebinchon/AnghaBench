
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int (* ppm_cb ) (int ,int ,int ,int ) ;int (* prm_cb ) (int ,int ,int ,int ) ;} ;
typedef int BD_ADDR ;


 int BTA_SYS_CONN_CLOSE ;
 TYPE_1__ bta_sys_cb ;
 int stub1 (int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;

void bta_sys_conn_close(UINT8 id, UINT8 app_id, BD_ADDR peer_addr)
{
    if (bta_sys_cb.prm_cb) {

        bta_sys_cb.prm_cb(BTA_SYS_CONN_CLOSE, id, app_id, peer_addr);

    }

    if (bta_sys_cb.ppm_cb) {

        bta_sys_cb.ppm_cb(BTA_SYS_CONN_CLOSE, id, app_id, peer_addr);

    }
}
