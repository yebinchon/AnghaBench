
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ble_hci_trans_rx_cmd_fn ;
typedef int ble_hci_trans_rx_acl_fn ;


 void* ble_hci_rx_acl_hs_arg ;
 int * ble_hci_rx_acl_hs_cb ;
 void* ble_hci_rx_cmd_hs_arg ;
 int * ble_hci_rx_cmd_hs_cb ;

void ble_hci_trans_cfg_hs(ble_hci_trans_rx_cmd_fn *cmd_cb,
                     void *cmd_arg,
                     ble_hci_trans_rx_acl_fn *acl_cb,
                     void *acl_arg)
{
    ble_hci_rx_cmd_hs_cb = cmd_cb;
    ble_hci_rx_cmd_hs_arg = cmd_arg;
    ble_hci_rx_acl_hs_cb = acl_cb;
    ble_hci_rx_acl_hs_arg = acl_arg;
}
