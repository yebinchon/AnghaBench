
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int gatt_if; } ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_LE ;
 int GATT_GetConnIdIfConnected (int ,int ,int *,int ) ;
 int GATT_INVALID_CONN_ID ;
 TYPE_1__ gatt_cb ;

UINT16 gatt_profile_find_conn_id_by_bd_addr(BD_ADDR remote_bda)
{
    UINT16 conn_id = GATT_INVALID_CONN_ID;
    GATT_GetConnIdIfConnected (gatt_cb.gatt_if, remote_bda, &conn_id, BT_TRANSPORT_LE);
    return conn_id;
}
