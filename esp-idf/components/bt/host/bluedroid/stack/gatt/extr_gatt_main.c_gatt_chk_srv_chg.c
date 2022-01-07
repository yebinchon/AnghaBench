
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bda; scalar_t__ srv_changed; } ;
typedef TYPE_1__ tGATTS_SRV_CHG ;


 int GATT_TRACE_DEBUG (char*,scalar_t__) ;
 int gatt_send_srv_chg_ind (int ) ;

void gatt_chk_srv_chg(tGATTS_SRV_CHG *p_srv_chg_clt)
{
    GATT_TRACE_DEBUG("gatt_chk_srv_chg srv_changed=%d", p_srv_chg_clt->srv_changed );

    if (p_srv_chg_clt->srv_changed) {
        gatt_send_srv_chg_ind(p_srv_chg_clt->bda);
    }
}
