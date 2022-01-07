
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_2__ {int (* p_ssr_cb ) (int ,int ,int ,int ) ;} ;


 TYPE_1__ bta_sys_cb ;
 int stub1 (int ,int ,int ,int ) ;

void bta_sys_chg_ssr_config (UINT8 id, UINT8 app_id, UINT16 max_latency, UINT16 min_tout)
{
    if (bta_sys_cb.p_ssr_cb) {
        bta_sys_cb.p_ssr_cb(id, app_id, max_latency, min_tout);
    }
}
