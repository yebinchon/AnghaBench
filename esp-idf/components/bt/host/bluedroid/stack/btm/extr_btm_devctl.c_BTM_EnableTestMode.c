
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int cond ;
typedef int bt_event_mask_t ;
typedef int UINT8 ;
struct TYPE_4__ {int (* transmit_command ) (int ,int *,int *,int *) ;} ;
struct TYPE_3__ {int (* make_set_event_mask ) (int const*) ;} ;


 int BTM_CONNECTABLE ;
 int BTM_DEFAULT_CONN_INTERVAL ;
 int BTM_DEFAULT_CONN_WINDOW ;
 int BTM_DEFAULT_DISC_INTERVAL ;
 int BTM_DEFAULT_DISC_WINDOW ;
 int BTM_GENERAL_DISCOVERABLE ;
 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int BTM_SetConnectability (int ,int ,int ) ;
 int BTM_SetDiscoverability (int ,int ,int ) ;
 int BTM_TRACE_EVENT (char*) ;
 int HCI_DO_AUTO_ACCEPT_CONNECT ;
 int HCI_FILTER_COND_NEW_DEVICE ;
 int HCI_FILTER_CONNECTION_SETUP ;
 scalar_t__ btsnd_hcic_enable_test_mode () ;
 int btsnd_hcic_set_event_filter (int ,int ,int *,int) ;
 TYPE_2__* hci_layer_get_interface () ;
 TYPE_1__* hci_packet_factory_get_interface () ;
 int stub1 (int ,int *,int *,int *) ;
 int stub2 (int const*) ;

tBTM_STATUS BTM_EnableTestMode(void)
{
    UINT8 cond;

    BTM_TRACE_EVENT ("BTM: BTM_EnableTestMode");



    cond = HCI_DO_AUTO_ACCEPT_CONNECT;
    if (!btsnd_hcic_set_event_filter(HCI_FILTER_CONNECTION_SETUP,
                                     HCI_FILTER_COND_NEW_DEVICE,
                                     &cond, sizeof(cond))) {
        return (BTM_NO_RESOURCES);
    }


    if (!BTM_SetConnectability(BTM_CONNECTABLE, BTM_DEFAULT_CONN_WINDOW,
                               BTM_DEFAULT_CONN_INTERVAL) == BTM_SUCCESS) {
        return BTM_NO_RESOURCES;
    }


    if (!BTM_SetDiscoverability(BTM_GENERAL_DISCOVERABLE, BTM_DEFAULT_DISC_WINDOW,
                                BTM_DEFAULT_DISC_INTERVAL) == BTM_SUCCESS) {
        return BTM_NO_RESOURCES;
    }


    hci_layer_get_interface()->transmit_command(
        hci_packet_factory_get_interface()->make_set_event_mask((const bt_event_mask_t *)("\x00\x00\x00\x00\x00\x00\x00\x00")),
        ((void*)0),
        ((void*)0),
        ((void*)0));


    if (btsnd_hcic_enable_test_mode ()) {
        return (BTM_SUCCESS);
    } else {
        return (BTM_NO_RESOURCES);
    }
}
