
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eMBParity ;
typedef int eMBErrorCode ;
typedef int USHORT ;
typedef int ULONG ;
typedef int UCHAR ;


 int ENTER_CRITICAL_SECTION () ;
 int EXIT_CRITICAL_SECTION () ;
 int MB_ENOERR ;
 int MB_EPORTERR ;
 scalar_t__ TRUE ;
 scalar_t__ xMBPortSerialInit (int ,int,int,int ) ;
 scalar_t__ xMBPortTimersInit (int ) ;

eMBErrorCode
eMBRTUInit( UCHAR ucSlaveAddress, UCHAR ucPort, ULONG ulBaudRate, eMBParity eParity )
{
    eMBErrorCode eStatus = MB_ENOERR;
    ULONG usTimerT35_50us;

    ( void )ucSlaveAddress;
    ENTER_CRITICAL_SECTION( );


    if( xMBPortSerialInit( ucPort, ulBaudRate, 8, eParity ) != TRUE )
    {
        eStatus = MB_EPORTERR;
    }
    else
    {



        if( ulBaudRate > 19200 )
        {
            usTimerT35_50us = 35;
        }
        else
        {
            usTimerT35_50us = ( 7UL * 220000UL ) / ( 2UL * ulBaudRate );
        }
        if( xMBPortTimersInit( ( USHORT ) usTimerT35_50us ) != TRUE )
        {
            eStatus = MB_EPORTERR;
        }
    }
    EXIT_CRITICAL_SECTION( );

    return eStatus;
}
