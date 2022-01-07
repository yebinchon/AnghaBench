
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tBT_TRANSPORT ;
struct TYPE_3__ {int sec_flags; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef scalar_t__ UINT8 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTM_TRACE_ERROR (char*) ;
 scalar_t__ BT_TRANSPORT_BR_EDR ;
 int FALSE ;
 int TRUE ;
 TYPE_1__* btm_find_dev (int ) ;

BOOLEAN BTM_GetSecurityFlagsByTransport (BD_ADDR bd_addr, UINT8 *p_sec_flags,
        tBT_TRANSPORT transport)
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    if ((p_dev_rec = btm_find_dev (bd_addr)) != ((void*)0)) {
        if (transport == BT_TRANSPORT_BR_EDR) {
            *p_sec_flags = (UINT8) p_dev_rec->sec_flags;
        } else {
            *p_sec_flags = (UINT8) (p_dev_rec->sec_flags >> 8);
        }

        return (TRUE);
    }
    BTM_TRACE_ERROR ("BTM_GetSecurityFlags false\n");
    return (FALSE);
}
