
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key_type; } ;
struct TYPE_5__ {TYPE_1__ ble; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTM_TRACE_DEBUG (char*) ;
 int FALSE ;
 int TRUE ;
 TYPE_2__* btm_find_dev (int ) ;

BOOLEAN btm_ble_get_enc_key_type(BD_ADDR bd_addr, UINT8 *p_key_types)
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    BTM_TRACE_DEBUG ("btm_ble_get_enc_key_type");

    if ((p_dev_rec = btm_find_dev (bd_addr)) != ((void*)0)) {
        *p_key_types = p_dev_rec->ble.key_type;
        return TRUE;
    }

    return FALSE;
}
