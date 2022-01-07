
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_CRITICAL_SECTION () ;
 int EXIT_CRITICAL_SECTION () ;
 int FALSE ;
 int STATE_RX_INIT ;
 int TRUE ;
 int eRcvState ;
 int vMBPortSerialEnable (int ,int ) ;
 int vMBPortTimersEnable () ;

void
eMBRTUStart( void )
{
    ENTER_CRITICAL_SECTION( );





    eRcvState = STATE_RX_INIT;
    vMBPortSerialEnable( TRUE, FALSE );
    vMBPortTimersEnable( );

    EXIT_CRITICAL_SECTION( );
}
