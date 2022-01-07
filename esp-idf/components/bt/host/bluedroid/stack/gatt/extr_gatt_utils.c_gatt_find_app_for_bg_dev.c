
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tGATT_IF ;
struct TYPE_3__ {scalar_t__* gatt_if; } ;
typedef TYPE_1__ tGATT_BG_CONN_DEV ;
typedef size_t UINT8 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int FALSE ;
 size_t GATT_MAX_APPS ;
 int TRUE ;
 TYPE_1__* gatt_find_bg_dev (int ) ;

BOOLEAN gatt_find_app_for_bg_dev(BD_ADDR bd_addr, tGATT_IF *p_gatt_if)
{
    tGATT_BG_CONN_DEV *p_dev = ((void*)0);
    UINT8 i;
    BOOLEAN ret = FALSE;

    if ((p_dev = gatt_find_bg_dev(bd_addr)) == ((void*)0)) {
        return ret;
    }

    for (i = 0; i < GATT_MAX_APPS; i ++) {
        if (p_dev->gatt_if[i] != 0 ) {
            *p_gatt_if = p_dev->gatt_if[i];
            ret = TRUE;
            break;
        }
    }
    return ret;
}
