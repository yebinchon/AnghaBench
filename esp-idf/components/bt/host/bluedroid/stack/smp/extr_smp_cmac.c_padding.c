
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef scalar_t__* BT_OCTET16 ;


 scalar_t__ BT_OCTET16_LEN ;

__attribute__((used)) static void padding ( BT_OCTET16 dest, UINT8 length )
{
    UINT8 i, *p = dest;

    for ( i = length ; i < BT_OCTET16_LEN; i++ ) {
        p[BT_OCTET16_LEN - i - 1] = ( i == length ) ? 0x80 : 0;
    }
}
