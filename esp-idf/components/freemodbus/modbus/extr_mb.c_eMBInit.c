
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eMBParity ;
typedef int eMBMode ;
typedef scalar_t__ eMBErrorCode ;
typedef int ULONG ;
typedef scalar_t__ UCHAR ;


 scalar_t__ MB_ADDRESS_BROADCAST ;
 scalar_t__ MB_ADDRESS_MAX ;
 scalar_t__ MB_ADDRESS_MIN ;

 scalar_t__ MB_EINVAL ;
 scalar_t__ MB_ENOERR ;
 scalar_t__ MB_EPORTERR ;
 int MB_PORT_HAS_CLOSE ;

 int STATE_DISABLED ;
 scalar_t__ eMBASCIIInit (scalar_t__,scalar_t__,int ,int ) ;
 int eMBASCIIReceive ;
 int eMBASCIISend ;
 int eMBASCIIStart ;
 int eMBASCIIStop ;
 int eMBCurrentMode ;
 scalar_t__ eMBRTUInit (scalar_t__,scalar_t__,int ,int ) ;
 int eMBRTUReceive ;
 int eMBRTUSend ;
 int eMBRTUStart ;
 int eMBRTUStop ;
 int eMBState ;
 int peMBFrameReceiveCur ;
 int peMBFrameSendCur ;
 int * pvMBFrameCloseCur ;
 int pvMBFrameStartCur ;
 int pvMBFrameStopCur ;
 int pxMBFrameCBByteReceived ;
 int pxMBFrameCBTransmitterEmpty ;
 int pxMBPortCBTimerExpired ;
 scalar_t__ ucMBAddress ;
 int * vMBPortClose ;
 int xMBASCIIReceiveFSM ;
 int xMBASCIITimerT1SExpired ;
 int xMBASCIITransmitFSM ;
 int xMBPortEventInit () ;
 int xMBRTUReceiveFSM ;
 int xMBRTUTimerT35Expired ;
 int xMBRTUTransmitFSM ;

eMBErrorCode
eMBInit( eMBMode eMode, UCHAR ucSlaveAddress, UCHAR ucPort, ULONG ulBaudRate, eMBParity eParity )
{
    eMBErrorCode eStatus = MB_ENOERR;


    if( ( ucSlaveAddress == MB_ADDRESS_BROADCAST ) ||
        ( ucSlaveAddress < MB_ADDRESS_MIN ) || ( ucSlaveAddress > MB_ADDRESS_MAX ) )
    {
        eStatus = MB_EINVAL;
    }
    else
    {
        ucMBAddress = ucSlaveAddress;

        switch ( eMode )
        {
        default:
            eStatus = MB_EINVAL;
        }

        if( eStatus == MB_ENOERR )
        {
            if( !xMBPortEventInit( ) )
            {

                eStatus = MB_EPORTERR;
            }
            else
            {
                eMBCurrentMode = eMode;
                eMBState = STATE_DISABLED;
            }
        }
    }
    return eStatus;
}
