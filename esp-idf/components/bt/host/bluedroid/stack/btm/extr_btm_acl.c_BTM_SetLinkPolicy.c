
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {int hci_handle; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BTM_CMD_STARTED ;
 int BTM_NO_RESOURCES ;
 int * BTM_ReadLocalFeatures () ;
 int BTM_TRACE_API (char*,int) ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_UNKNOWN_ADDR ;
 int BT_TRANSPORT_BR_EDR ;
 int HCI_DISABLE_ALL_LM_MODES ;
 int HCI_ENABLE_HOLD_MODE ;
 int HCI_ENABLE_MASTER_SLAVE_SWITCH ;
 int HCI_ENABLE_PARK_MODE ;
 int HCI_ENABLE_SNIFF_MODE ;
 int HCI_HOLD_MODE_SUPPORTED (int *) ;
 int HCI_PARK_MODE_SUPPORTED (int *) ;
 int HCI_SNIFF_MODE_SUPPORTED (int *) ;
 int HCI_SWITCH_SUPPORTED (int *) ;
 TYPE_1__* btm_bda_to_acl (int ,int ) ;
 scalar_t__ btsnd_hcic_write_policy_set (int ,int) ;

tBTM_STATUS BTM_SetLinkPolicy (BD_ADDR remote_bda, UINT16 *settings)
{
    tACL_CONN *p;
    UINT8 *localFeatures = BTM_ReadLocalFeatures();
    BTM_TRACE_DEBUG ("BTM_SetLinkPolicy\n");



    if (*settings != HCI_DISABLE_ALL_LM_MODES) {
        if ( (*settings & HCI_ENABLE_MASTER_SLAVE_SWITCH) && (!HCI_SWITCH_SUPPORTED(localFeatures)) ) {
            *settings &= (~HCI_ENABLE_MASTER_SLAVE_SWITCH);
            BTM_TRACE_API ("BTM_SetLinkPolicy switch not supported (settings: 0x%04x)\n", *settings );
        }
        if ( (*settings & HCI_ENABLE_HOLD_MODE) && (!HCI_HOLD_MODE_SUPPORTED(localFeatures)) ) {
            *settings &= (~HCI_ENABLE_HOLD_MODE);
            BTM_TRACE_API ("BTM_SetLinkPolicy hold not supported (settings: 0x%04x)\n", *settings );
        }
        if ( (*settings & HCI_ENABLE_SNIFF_MODE) && (!HCI_SNIFF_MODE_SUPPORTED(localFeatures)) ) {
            *settings &= (~HCI_ENABLE_SNIFF_MODE);
            BTM_TRACE_API ("BTM_SetLinkPolicy sniff not supported (settings: 0x%04x)\n", *settings );
        }
        if ( (*settings & HCI_ENABLE_PARK_MODE) && (!HCI_PARK_MODE_SUPPORTED(localFeatures)) ) {
            *settings &= (~HCI_ENABLE_PARK_MODE);
            BTM_TRACE_API ("BTM_SetLinkPolicy park not supported (settings: 0x%04x)\n", *settings );
        }
    }

    if ((p = btm_bda_to_acl(remote_bda, BT_TRANSPORT_BR_EDR)) != ((void*)0)) {
        return (btsnd_hcic_write_policy_set (p->hci_handle, *settings) ? BTM_CMD_STARTED : BTM_NO_RESOURCES);
    }


    return (BTM_UNKNOWN_ADDR);
}
