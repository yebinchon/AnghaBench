
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eMBErrorCode ;
typedef scalar_t__ USHORT ;
typedef int UCHAR ;


 int ENTER_CRITICAL_SECTION () ;
 int EXIT_CRITICAL_SECTION () ;
 int MB_EIO ;
 int MB_ENOERR ;
 size_t MB_SER_PDU_ADDR_OFF ;
 size_t MB_SER_PDU_PDU_OFF ;
 scalar_t__ MB_SER_PDU_SIZE_CRC ;
 scalar_t__ MB_SER_PDU_SIZE_MAX ;
 scalar_t__ MB_SER_PDU_SIZE_MIN ;
 int assert (int) ;
 int * ucRTUBuf ;
 scalar_t__ usMBCRC16 (int *,scalar_t__) ;
 scalar_t__ usRcvBufferPos ;

eMBErrorCode
eMBRTUReceive( UCHAR * pucRcvAddress, UCHAR ** pucFrame, USHORT * pusLength )
{
    eMBErrorCode eStatus = MB_ENOERR;

    ENTER_CRITICAL_SECTION( );
    assert( usRcvBufferPos < MB_SER_PDU_SIZE_MAX );


    if( ( usRcvBufferPos >= MB_SER_PDU_SIZE_MIN )
        && ( usMBCRC16( ( UCHAR * ) ucRTUBuf, usRcvBufferPos ) == 0 ) )
    {



        *pucRcvAddress = ucRTUBuf[MB_SER_PDU_ADDR_OFF];




        *pusLength = ( USHORT )( usRcvBufferPos - MB_SER_PDU_PDU_OFF - MB_SER_PDU_SIZE_CRC );


        *pucFrame = ( UCHAR * ) & ucRTUBuf[MB_SER_PDU_PDU_OFF];
    }
    else
    {
        eStatus = MB_EIO;
    }

    EXIT_CRITICAL_SECTION( );
    return eStatus;
}
