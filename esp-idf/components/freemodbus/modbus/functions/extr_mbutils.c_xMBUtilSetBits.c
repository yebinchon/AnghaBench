
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UCHAR ;


 int BITS_UCHAR ;
 int assert (int) ;

void
xMBUtilSetBits( UCHAR * ucByteBuf, USHORT usBitOffset, UCHAR ucNBits,
                UCHAR ucValue )
{
    USHORT usWordBuf;
    USHORT usMask;
    USHORT usByteOffset;
    USHORT usNPreBits;
    USHORT usValue = ucValue;

    assert( ucNBits <= 8 );
    assert( ( size_t )BITS_UCHAR == sizeof( UCHAR ) * 8 );



    usByteOffset = ( USHORT )( ( usBitOffset ) / BITS_UCHAR );


    usNPreBits = ( USHORT )( usBitOffset - usByteOffset * BITS_UCHAR );


    usValue <<= usNPreBits;


    usMask = ( USHORT )( ( 1 << ( USHORT ) ucNBits ) - 1 );
    usMask <<= usBitOffset - usByteOffset * BITS_UCHAR;


    usWordBuf = ucByteBuf[usByteOffset];
    usWordBuf |= ucByteBuf[usByteOffset + 1] << BITS_UCHAR;


    usWordBuf = ( USHORT )( ( usWordBuf & ( ~usMask ) ) | usValue );


    ucByteBuf[usByteOffset] = ( UCHAR )( usWordBuf & 0xFF );
    ucByteBuf[usByteOffset + 1] = ( UCHAR )( usWordBuf >> BITS_UCHAR );
}
