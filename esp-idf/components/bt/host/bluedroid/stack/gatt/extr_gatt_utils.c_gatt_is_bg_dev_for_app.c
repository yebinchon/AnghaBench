
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tGATT_IF ;
struct TYPE_3__ {scalar_t__* gatt_if; scalar_t__ in_use; } ;
typedef TYPE_1__ tGATT_BG_CONN_DEV ;
typedef size_t UINT8 ;
typedef int BOOLEAN ;


 int FALSE ;
 size_t GATT_MAX_APPS ;
 int TRUE ;

BOOLEAN gatt_is_bg_dev_for_app(tGATT_BG_CONN_DEV *p_dev, tGATT_IF gatt_if)
{
    UINT8 i;

    for (i = 0; i < GATT_MAX_APPS; i ++ ) {
        if (p_dev->in_use && (p_dev->gatt_if[i] == gatt_if)) {
            return TRUE;
        }
    }
    return FALSE;
}
