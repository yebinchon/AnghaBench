
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tGATT_STATUS ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef TYPE_1__ tBT_UUID ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;


 scalar_t__ FALSE ;
 int GATT_HANDLE_IS_VALID (int) ;
 int GATT_INVALID_HANDLE ;
 int GATT_INVALID_PDU ;
 scalar_t__ GATT_REQ_FIND_TYPE_VALUE ;
 scalar_t__ GATT_REQ_READ_BY_GRP_TYPE ;
 scalar_t__ GATT_REQ_READ_BY_TYPE ;
 int GATT_SUCCESS ;
 int GATT_TRACE_DEBUG (char*) ;
 int STREAM_TO_UINT16 (int,scalar_t__*) ;
 scalar_t__ gatt_parse_uuid_from_cmd (TYPE_1__*,int,scalar_t__**) ;

__attribute__((used)) static tGATT_STATUS gatts_validate_packet_format(UINT8 op_code, UINT16 *p_len,
        UINT8 **p_data, tBT_UUID *p_uuid_filter,
        UINT16 *p_s_hdl, UINT16 *p_e_hdl)
{
    tGATT_STATUS reason = GATT_SUCCESS;
    UINT16 uuid_len, s_hdl = 0, e_hdl = 0;
    UINT16 len = *p_len;
    UINT8 *p = *p_data;

    if (len >= 4) {

        STREAM_TO_UINT16(s_hdl, p);
        STREAM_TO_UINT16(e_hdl, p);
        len -= 4;

        if (s_hdl > e_hdl || !GATT_HANDLE_IS_VALID(s_hdl) || !GATT_HANDLE_IS_VALID(e_hdl)) {
            reason = GATT_INVALID_HANDLE;
        }

        else if (op_code == GATT_REQ_READ_BY_GRP_TYPE ||
                 op_code == GATT_REQ_FIND_TYPE_VALUE ||
                 op_code == GATT_REQ_READ_BY_TYPE) {
            if (len >= 2 && p_uuid_filter != ((void*)0)) {
                uuid_len = (op_code == GATT_REQ_FIND_TYPE_VALUE) ? 2 : len;


                if (gatt_parse_uuid_from_cmd (p_uuid_filter, uuid_len, &p) == FALSE ||
                        p_uuid_filter->len == 0) {
                    GATT_TRACE_DEBUG("UUID filter does not exsit");
                    reason = GATT_INVALID_PDU;
                } else {
                    len -= p_uuid_filter->len;
                }
            } else {
                reason = GATT_INVALID_PDU;
            }
        }
    } else {
        reason = GATT_INVALID_PDU;
    }

    *p_data = p;
    *p_len = len;
    *p_s_hdl = s_hdl;
    *p_e_hdl = e_hdl;

    return reason;
}
