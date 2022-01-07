
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBLE_ADDR_TYPE ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 scalar_t__ HCI_ROLE_MASTER ;
 int TRUE ;
 int btm_ble_update_link_topology_mask (scalar_t__,int ) ;
 int l2cble_advertiser_conn_comp (int ,int ,int ,int ,int ,int ) ;
 int l2cble_scanner_conn_comp (int ,int ,int ,int ,int ,int ) ;

void l2cble_conn_comp(UINT16 handle, UINT8 role, BD_ADDR bda, tBLE_ADDR_TYPE type,
                      UINT16 conn_interval, UINT16 conn_latency, UINT16 conn_timeout)
{
    btm_ble_update_link_topology_mask(role, TRUE);

    if (role == HCI_ROLE_MASTER) {
        l2cble_scanner_conn_comp(handle, bda, type, conn_interval, conn_latency, conn_timeout);
    } else {
        l2cble_advertiser_conn_comp(handle, bda, type, conn_interval, conn_latency, conn_timeout);
    }
}
