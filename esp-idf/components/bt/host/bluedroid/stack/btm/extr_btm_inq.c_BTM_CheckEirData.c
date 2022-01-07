
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;


 int BTM_TRACE_API (char*,scalar_t__) ;
 int HCI_EXT_INQ_RESPONSE_LEN ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;

UINT8 *BTM_CheckEirData( UINT8 *p_eir, UINT8 type, UINT8 *p_length )
{
    UINT8 *p = p_eir;
    UINT8 length;
    UINT8 eir_type;
    BTM_TRACE_API("BTM_CheckEirData type=0x%02X\n", type);

    STREAM_TO_UINT8(length, p);
    while ( length && (p - p_eir <= HCI_EXT_INQ_RESPONSE_LEN)) {
        STREAM_TO_UINT8(eir_type, p);
        if ( eir_type == type ) {

            *p_length = length - 1;
            return p;
        }
        p += length - 1;
        STREAM_TO_UINT8(length, p);
    }

    *p_length = 0;
    return ((void*)0);
}
