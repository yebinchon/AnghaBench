
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ gatt_if; int listening; } ;
typedef TYPE_1__ tGATT_REG ;
typedef scalar_t__ tGATT_IF ;
struct TYPE_7__ {scalar_t__* gatt_if; scalar_t__* listen_gif; int remote_bda; } ;
typedef TYPE_2__ tGATT_BG_CONN_DEV ;
typedef size_t UINT8 ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 scalar_t__ BTM_BleUpdateAdvWhitelist (scalar_t__,int ,int ,int *) ;
 scalar_t__ BTM_BleUpdateBgConnDev (scalar_t__,int ) ;
 scalar_t__ FALSE ;
 size_t GATT_MAX_APPS ;
 scalar_t__ TRUE ;
 TYPE_2__* gatt_find_bg_dev (int ) ;
 int memset (TYPE_2__*,int ,int) ;

BOOLEAN gatt_remove_bg_dev_from_list(tGATT_REG *p_reg, BD_ADDR bd_addr, BOOLEAN is_initiator)
{
    tGATT_IF gatt_if = p_reg->gatt_if;
    tGATT_BG_CONN_DEV *p_dev = ((void*)0);
    UINT8 i, j;
    BOOLEAN ret = FALSE;

    if ((p_dev = gatt_find_bg_dev(bd_addr)) == ((void*)0)) {
        return ret;
    }

    for (i = 0; i < GATT_MAX_APPS && (p_dev->gatt_if[i] > 0 || p_dev->listen_gif[i]); i ++) {
        if (is_initiator) {
            if (p_dev->gatt_if[i] == gatt_if) {
                p_dev->gatt_if[i] = 0;

                for (j = i + 1; j < GATT_MAX_APPS; j ++) {
                    p_dev->gatt_if[j - 1] = p_dev->gatt_if[j];
                }

                if (p_dev->gatt_if[0] == 0) {
                    ret = BTM_BleUpdateBgConnDev(FALSE, p_dev->remote_bda);
                } else {
                    ret = TRUE;
                }

                break;
            }
        } else {
            if (p_dev->listen_gif[i] == gatt_if) {
                p_dev->listen_gif[i] = 0;
                p_reg->listening --;

                for (j = i + 1; j < GATT_MAX_APPS; j ++) {
                    p_dev->listen_gif[j - 1] = p_dev->listen_gif[j];
                }

                if (p_dev->listen_gif[0] == 0) {

                    ret = BTM_BleUpdateAdvWhitelist(FALSE, p_dev->remote_bda, 0, ((void*)0));
                } else {
                    ret = TRUE;
                }
                break;
            }
        }
    }

    if (i != GATT_MAX_APPS && p_dev->gatt_if[0] == 0 && p_dev->listen_gif[0] == 0) {
        memset(p_dev, 0, sizeof(tGATT_BG_CONN_DEV));
    }

    return ret;
}
