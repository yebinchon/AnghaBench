
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
vMBPortClose( void )
{
    extern void vMBPortSerialClose( void );
    extern void vMBPortTimerClose( void );
    extern void vMBPortEventClose( void );
    vMBPortSerialClose( );
    vMBPortTimerClose( );
    vMBPortEventClose( );
}
