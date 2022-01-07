
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ble_addr_type; } ;
struct TYPE_7__ {TYPE_1__ ble; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef int tBLE_ADDR_TYPE ;
struct TYPE_8__ {int active_remote_addr_type; int active_remote_addr; } ;
typedef TYPE_3__ tACL_CONN ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_TRACE_ERROR (char*) ;
 int BT_TRANSPORT_LE ;
 int FALSE ;
 int TRUE ;
 TYPE_3__* btm_bda_to_acl (int ,int ) ;
 TYPE_2__* btm_find_dev (int ) ;
 int memcpy (int ,int ,int ) ;

BOOLEAN BTM_ReadRemoteConnectionAddr(BD_ADDR pseudo_addr, BD_ADDR conn_addr,
                                     tBLE_ADDR_TYPE *p_addr_type)
{
    BOOLEAN st = TRUE;

    tACL_CONN *p = btm_bda_to_acl (pseudo_addr, BT_TRANSPORT_LE);

    if (p == ((void*)0)) {
        BTM_TRACE_ERROR("BTM_ReadRemoteConnectionAddr can not find connection"
                        " with matching address");
        return FALSE;
    }

    memcpy(conn_addr, p->active_remote_addr, BD_ADDR_LEN);
    *p_addr_type = p->active_remote_addr_type;
    return st;

}
