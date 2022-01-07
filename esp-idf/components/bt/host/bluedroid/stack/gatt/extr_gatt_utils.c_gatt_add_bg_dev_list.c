
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ gatt_if; scalar_t__ listening; } ;
typedef TYPE_1__ tGATT_REG ;
typedef scalar_t__ tGATT_IF ;
struct TYPE_7__ {scalar_t__* gatt_if; scalar_t__* listen_gif; } ;
typedef TYPE_2__ tGATT_BG_CONN_DEV ;
typedef size_t UINT8 ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 scalar_t__ BTM_BleUpdateAdvWhitelist (scalar_t__,int ,int ,int *) ;
 scalar_t__ BTM_BleUpdateBgConnDev (scalar_t__,int ) ;
 scalar_t__ FALSE ;
 scalar_t__ GATT_LISTEN_TO_ALL ;
 scalar_t__ GATT_LISTEN_TO_NONE ;
 size_t GATT_MAX_APPS ;
 int GATT_TRACE_ERROR (char*) ;
 scalar_t__ TRUE ;
 TYPE_2__* gatt_alloc_bg_dev (int ) ;
 TYPE_2__* gatt_find_bg_dev (int ) ;

BOOLEAN gatt_add_bg_dev_list(tGATT_REG *p_reg, BD_ADDR bd_addr, BOOLEAN is_initator)
{
    tGATT_IF gatt_if = p_reg->gatt_if;
    tGATT_BG_CONN_DEV *p_dev = ((void*)0);
    UINT8 i;
    BOOLEAN ret = FALSE;

    if ((p_dev = gatt_find_bg_dev(bd_addr)) == ((void*)0)) {
        p_dev = gatt_alloc_bg_dev(bd_addr);
    }

    if (p_dev) {
        for (i = 0; i < GATT_MAX_APPS; i ++) {
            if (is_initator) {
                if (p_dev->gatt_if[i] == gatt_if) {
                    GATT_TRACE_ERROR("device already in iniator white list");
                    return TRUE;
                } else if (p_dev->gatt_if[i] == 0) {
                    p_dev->gatt_if[i] = gatt_if;
                    if (i == 0) {
                        ret = BTM_BleUpdateBgConnDev(TRUE, bd_addr);
                    } else {
                        ret = TRUE;
                    }
                    break;
                }
            } else {
                if (p_dev->listen_gif[i] == gatt_if) {
                    GATT_TRACE_ERROR("device already in adv white list");
                    return TRUE;
                } else if (p_dev->listen_gif[i] == 0) {
                    if (p_reg->listening == GATT_LISTEN_TO_ALL) {
                        p_reg->listening = GATT_LISTEN_TO_NONE;
                    }

                    p_reg->listening ++;
                    p_dev->listen_gif[i] = gatt_if;

                    if (i == 0) {

                        ret = BTM_BleUpdateAdvWhitelist(TRUE, bd_addr, 0, ((void*)0));
                    } else {
                        ret = TRUE;
                    }
                    break;
                }
            }
        }
    } else {
        GATT_TRACE_ERROR("no device record available");
    }

    return ret;
}
