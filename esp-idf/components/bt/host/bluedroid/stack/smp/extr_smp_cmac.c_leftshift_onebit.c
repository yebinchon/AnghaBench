
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;


 size_t BT_OCTET16_LEN ;
 int SMP_TRACE_EVENT (char*) ;

__attribute__((used)) static void leftshift_onebit(UINT8 *input, UINT8 *output)
{
    UINT8 i, overflow = 0 , next_overflow = 0;
    SMP_TRACE_EVENT ("leftshift_onebit ");

    for ( i = 0; i < BT_OCTET16_LEN ; i ++ ) {
        next_overflow = (input[i] & 0x80) ? 1 : 0;
        output[i] = (input[i] << 1) | overflow;
        overflow = next_overflow;
    }
    return;
}
