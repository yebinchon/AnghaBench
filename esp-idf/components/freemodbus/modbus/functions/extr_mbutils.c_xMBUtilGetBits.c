
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UCHAR ;


 int BITS_UCHAR ;

UCHAR
xMBUtilGetBits( UCHAR * ucByteBuf, USHORT usBitOffset, UCHAR ucNBits )
{
    USHORT usWordBuf;
    USHORT usMask;
    USHORT usByteOffset;
    USHORT usNPreBits;



    usByteOffset = ( USHORT )( ( usBitOffset ) / BITS_UCHAR );


    usNPreBits = ( USHORT )( usBitOffset - usByteOffset * BITS_UCHAR );


    usMask = ( USHORT )( ( 1 << ( USHORT ) ucNBits ) - 1 );


    usWordBuf = ucByteBuf[usByteOffset];
    usWordBuf |= ucByteBuf[usByteOffset + 1] << BITS_UCHAR;


    usWordBuf >>= usNPreBits;


    usWordBuf &= usMask;

    return ( UCHAR ) usWordBuf;
}
