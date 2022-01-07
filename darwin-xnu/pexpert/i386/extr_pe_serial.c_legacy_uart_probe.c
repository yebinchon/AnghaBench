
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_READ (int ) ;
 int IO_WRITE (int ,int) ;
 int SCR ;

__attribute__((used)) static int
legacy_uart_probe( void )
{


    IO_WRITE( SCR, 0x5a );
    if (IO_READ(SCR) != 0x5a) return 0;
    IO_WRITE( SCR, 0xa5 );
    if (IO_READ(SCR) != 0xa5) return 0;
    return 1;
}
