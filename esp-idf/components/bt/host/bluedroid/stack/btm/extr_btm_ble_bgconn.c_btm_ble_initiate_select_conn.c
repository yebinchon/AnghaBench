
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BD_ADDR ;


 int BLE_ADDR_UNKNOWN_TYPE ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*) ;
 int L2CAP_ATT_CID ;
 int L2CA_ConnectFixedChnl (int ,int ,int ) ;

void btm_ble_initiate_select_conn(BD_ADDR bda)
{
    BTM_TRACE_EVENT ("btm_ble_initiate_select_conn");


    if (!L2CA_ConnectFixedChnl(L2CAP_ATT_CID, bda, BLE_ADDR_UNKNOWN_TYPE)) {
        BTM_TRACE_ERROR("btm_ble_initiate_select_conn failed");
    }
}
