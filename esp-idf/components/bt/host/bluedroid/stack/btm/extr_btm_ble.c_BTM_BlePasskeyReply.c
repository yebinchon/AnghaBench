
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tSMP_STATUS ;
struct TYPE_3__ {int sec_flags; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef int BD_ADDR ;


 int BTM_SEC_LE_AUTHENTICATED ;
 scalar_t__ BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_TRACE_ERROR (char*) ;
 int SMP_PASSKEY_ENTRY_FAIL ;
 int SMP_PasskeyReply (int ,int ,int ) ;
 int SMP_SUCCESS ;
 TYPE_1__* btm_find_dev (int ) ;

void BTM_BlePasskeyReply (BD_ADDR bd_addr, UINT8 res, UINT32 passkey)
{

    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev (bd_addr);
    tSMP_STATUS res_smp = (res == BTM_SUCCESS) ? SMP_SUCCESS : SMP_PASSKEY_ENTRY_FAIL;

    if (p_dev_rec == ((void*)0)) {
        BTM_TRACE_ERROR("Passkey reply to Unknown device");
        return;
    }

    p_dev_rec->sec_flags |= BTM_SEC_LE_AUTHENTICATED;
    BTM_TRACE_DEBUG ("BTM_BlePasskeyReply");
    SMP_PasskeyReply(bd_addr, res_smp, passkey);

}
