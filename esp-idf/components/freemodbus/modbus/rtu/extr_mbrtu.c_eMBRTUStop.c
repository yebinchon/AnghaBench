
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_CRITICAL_SECTION () ;
 int EXIT_CRITICAL_SECTION () ;
 int FALSE ;
 int vMBPortSerialEnable (int ,int ) ;
 int vMBPortTimersDisable () ;

void
eMBRTUStop( void )
{
    ENTER_CRITICAL_SECTION( );
    vMBPortSerialEnable( FALSE, FALSE );
    vMBPortTimersDisable( );
    EXIT_CRITICAL_SECTION( );
}
