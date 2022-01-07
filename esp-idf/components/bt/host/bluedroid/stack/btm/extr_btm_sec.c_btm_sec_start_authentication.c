
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hci_handle; int sec_state; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int BOOLEAN ;


 int BTM_SEC_STATE_AUTHENTICATING ;
 int btsnd_hcic_auth_request (int ) ;

__attribute__((used)) static BOOLEAN btm_sec_start_authentication (tBTM_SEC_DEV_REC *p_dev_rec)
{
    p_dev_rec->sec_state = BTM_SEC_STATE_AUTHENTICATING;

    return (btsnd_hcic_auth_request (p_dev_rec->hci_handle));
}
