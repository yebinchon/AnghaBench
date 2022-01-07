
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remote_bd_addr; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT16 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int FALSE ;
 int TRUE ;
 TYPE_1__* l2cu_find_lcb_by_handle (int ) ;
 int memcpy (int ,int ,int ) ;

BOOLEAN L2CA_GetBDAddrbyHandle (UINT16 handle, BD_ADDR bd_addr)
{
    tL2C_LCB *p_lcb = ((void*)0);
    BOOLEAN found_dev = FALSE;

    p_lcb = l2cu_find_lcb_by_handle (handle);
    if (p_lcb) {
        found_dev = TRUE;
        memcpy (bd_addr, p_lcb->remote_bd_addr, BD_ADDR_LEN);
    }

    return found_dev;
}
