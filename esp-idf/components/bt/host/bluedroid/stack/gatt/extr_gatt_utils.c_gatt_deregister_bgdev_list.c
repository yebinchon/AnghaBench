
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ listening; } ;
typedef TYPE_1__ tGATT_REG ;
typedef scalar_t__ tGATT_IF ;
struct TYPE_6__ {scalar_t__* gatt_if; scalar_t__* listen_gif; int remote_bda; scalar_t__ in_use; } ;
typedef TYPE_2__ tGATT_BG_CONN_DEV ;
typedef scalar_t__ UINT8 ;
struct TYPE_7__ {TYPE_2__* bgconn_dev; } ;


 int BTM_BleUpdateAdvWhitelist (int ,int ,int ,int *) ;
 int BTM_BleUpdateBgConnDev (int ,int ) ;
 int FALSE ;
 scalar_t__ GATT_MAX_APPS ;
 scalar_t__ GATT_MAX_BG_CONN_DEV ;
 TYPE_4__ gatt_cb ;
 TYPE_1__* gatt_get_regcb (scalar_t__) ;

void gatt_deregister_bgdev_list(tGATT_IF gatt_if)
{
    tGATT_BG_CONN_DEV *p_dev_list = &gatt_cb.bgconn_dev[0];
    UINT8 i , j, k;
    tGATT_REG *p_reg = gatt_get_regcb(gatt_if);


    for (i = 0 ; i < GATT_MAX_BG_CONN_DEV; i ++, p_dev_list ++ ) {
        if (p_dev_list->in_use) {
            for (j = 0; j < GATT_MAX_APPS; j ++) {
                if (p_dev_list->gatt_if[j] == 0 && p_dev_list->listen_gif[j] == 0) {
                    break;
                }

                if (p_dev_list->gatt_if[j] == gatt_if) {
                    for (k = j + 1; k < GATT_MAX_APPS; k ++) {
                        p_dev_list->gatt_if[k - 1] = p_dev_list->gatt_if[k];
                    }

                    if (p_dev_list->gatt_if[0] == 0) {
                        BTM_BleUpdateBgConnDev(FALSE, p_dev_list->remote_bda);
                    }
                }

                if (p_dev_list->listen_gif[j] == gatt_if) {
                    p_dev_list->listen_gif[j] = 0;

                    if (p_reg != ((void*)0) && p_reg->listening > 0) {
                        p_reg->listening --;
                    }


                    for (k = j + 1; k < GATT_MAX_APPS; k ++) {
                        p_dev_list->listen_gif[k - 1] = p_dev_list->listen_gif[k];
                    }

                    if (p_dev_list->listen_gif[0] == 0) {

                        BTM_BleUpdateAdvWhitelist(FALSE, p_dev_list->remote_bda, 0, ((void*)0));
                    }
                }
            }
        }
    }
}
