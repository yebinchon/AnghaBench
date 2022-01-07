
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;


 int BTM_BLE_CACHE_ADV_DATA_MAX ;
 int BTM_TRACE_API (char*,scalar_t__) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;

UINT8 *BTM_CheckAdvData( UINT8 *p_adv, UINT8 type, UINT8 *p_length)
{
    UINT8 *p = p_adv;
    UINT8 length;
    UINT8 adv_type;
    BTM_TRACE_API("BTM_CheckAdvData type=0x%02X", type);

    STREAM_TO_UINT8(length, p);

    while ( length && (p - p_adv <= BTM_BLE_CACHE_ADV_DATA_MAX)) {
        STREAM_TO_UINT8(adv_type, p);

        if ( adv_type == type ) {

            *p_length = length - 1;
            return p;
        }
        p += length - 1;
        STREAM_TO_UINT8(length, p);
    }

    *p_length = 0;
    return ((void*)0);
}
