
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tGATT_STATUS ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_2__ {scalar_t__ handle_of_h_r; } ;
typedef int * BD_ADDR ;


 int GATTS_HandleValueIndication (int ,scalar_t__,int,int *) ;
 int GATT_ERROR ;
 int GATT_INVALID_CONN_ID ;
 int GATT_NOT_FOUND ;
 int GATT_SIZE_OF_SRV_CHG_HNDL_RANGE ;
 int GATT_TRACE_DEBUG (char*) ;
 int GATT_TRACE_ERROR (char*,int ,int ,int ,int ,int ,int ) ;
 int UINT16_TO_STREAM (int *,int) ;
 TYPE_1__ gatt_cb ;
 int gatt_profile_find_conn_id_by_bd_addr (int *) ;

tGATT_STATUS gatt_send_srv_chg_ind (BD_ADDR peer_bda)
{
    UINT8 handle_range[GATT_SIZE_OF_SRV_CHG_HNDL_RANGE];
    UINT8 *p = handle_range;
    UINT16 conn_id;
    tGATT_STATUS status = GATT_ERROR;
    GATT_TRACE_DEBUG("gatt_send_srv_chg_ind");

    if (gatt_cb.handle_of_h_r) {
        if ((conn_id = gatt_profile_find_conn_id_by_bd_addr(peer_bda)) != GATT_INVALID_CONN_ID) {
            UINT16_TO_STREAM (p, 1);
            UINT16_TO_STREAM (p, 0xFFFF);
            status = GATTS_HandleValueIndication (conn_id,
                                         gatt_cb.handle_of_h_r,
                                         GATT_SIZE_OF_SRV_CHG_HNDL_RANGE,
                                         handle_range);
        } else {
            status = GATT_NOT_FOUND;
            GATT_TRACE_ERROR("Unable to find conn_id for  %02x%02x%02x%02x%02x%02x ",
                             peer_bda[0], peer_bda[1], peer_bda[2], peer_bda[3], peer_bda[4], peer_bda[5]);
        }
    }
    return status;
}
