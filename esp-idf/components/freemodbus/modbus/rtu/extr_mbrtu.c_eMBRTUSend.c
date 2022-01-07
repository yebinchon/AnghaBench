
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eMBErrorCode ;
typedef int USHORT ;
typedef void* UCHAR ;


 int ENTER_CRITICAL_SECTION () ;
 int EXIT_CRITICAL_SECTION () ;
 int FALSE ;
 int MB_EIO ;
 int MB_ENOERR ;
 size_t MB_SER_PDU_ADDR_OFF ;
 scalar_t__ STATE_RX_IDLE ;
 int STATE_TX_XMIT ;
 int TRUE ;
 scalar_t__ eRcvState ;
 int eSndState ;
 void** pucSndBufferCur ;
 void** ucRTUBuf ;
 int usMBCRC16 (void**,int) ;
 int usSndBufferCount ;
 int vMBPortSerialEnable (int ,int ) ;

eMBErrorCode
eMBRTUSend( UCHAR ucSlaveAddress, const UCHAR * pucFrame, USHORT usLength )
{
    eMBErrorCode eStatus = MB_ENOERR;
    USHORT usCRC16;

    ENTER_CRITICAL_SECTION( );





    if( eRcvState == STATE_RX_IDLE )
    {

        pucSndBufferCur = ( UCHAR * ) pucFrame - 1;
        usSndBufferCount = 1;


        pucSndBufferCur[MB_SER_PDU_ADDR_OFF] = ucSlaveAddress;
        usSndBufferCount += usLength;


        usCRC16 = usMBCRC16( ( UCHAR * ) pucSndBufferCur, usSndBufferCount );
        ucRTUBuf[usSndBufferCount++] = ( UCHAR )( usCRC16 & 0xFF );
        ucRTUBuf[usSndBufferCount++] = ( UCHAR )( usCRC16 >> 8 );


        eSndState = STATE_TX_XMIT;
        vMBPortSerialEnable( FALSE, TRUE );
    }
    else
    {
        eStatus = MB_EIO;
    }
    EXIT_CRITICAL_SECTION( );
    return eStatus;
}
