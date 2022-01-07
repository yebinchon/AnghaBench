
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sec_state; int hci_handle; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int BOOLEAN ;


 int BTM_SEC_STATE_ENCRYPTING ;
 int FALSE ;
 int TRUE ;
 int btsnd_hcic_set_conn_encrypt (int ,int ) ;

__attribute__((used)) static BOOLEAN btm_sec_start_encryption (tBTM_SEC_DEV_REC *p_dev_rec)
{
    if (!btsnd_hcic_set_conn_encrypt (p_dev_rec->hci_handle, TRUE)) {
        return (FALSE);
    }

    p_dev_rec->sec_state = BTM_SEC_STATE_ENCRYPTING;
    return (TRUE);
}
