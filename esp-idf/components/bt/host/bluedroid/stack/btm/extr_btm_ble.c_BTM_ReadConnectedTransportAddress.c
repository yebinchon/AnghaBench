
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBT_TRANSPORT ;
struct TYPE_4__ {int pseudo_addr; } ;
struct TYPE_5__ {int device_type; TYPE_1__ ble; int bd_addr; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BT_DEVICE_TYPE_BREDR ;
 int BT_TRANSPORT_BR_EDR ;
 int BT_TRANSPORT_LE ;
 int FALSE ;
 int TRUE ;
 int * btm_bda_to_acl (int ,int ) ;
 TYPE_2__* btm_find_dev (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;

BOOLEAN BTM_ReadConnectedTransportAddress(BD_ADDR remote_bda, tBT_TRANSPORT transport)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev(remote_bda);


    if (p_dev_rec == ((void*)0)) {
        memset(remote_bda, 0, BD_ADDR_LEN);
        return FALSE;
    }

    if (transport == BT_TRANSPORT_BR_EDR) {
        if (btm_bda_to_acl(p_dev_rec->bd_addr, transport) != ((void*)0)) {
            memcpy(remote_bda, p_dev_rec->bd_addr, BD_ADDR_LEN);
            return TRUE;
        } else if (p_dev_rec->device_type & BT_DEVICE_TYPE_BREDR) {
            memcpy(remote_bda, p_dev_rec->bd_addr, BD_ADDR_LEN);
        } else {
            memset(remote_bda, 0, BD_ADDR_LEN);
        }
        return FALSE;
    }

    if (transport == BT_TRANSPORT_LE) {
        memcpy(remote_bda, p_dev_rec->ble.pseudo_addr, BD_ADDR_LEN);
        if (btm_bda_to_acl(p_dev_rec->ble.pseudo_addr, transport) != ((void*)0)) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    return FALSE;
}
