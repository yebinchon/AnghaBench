
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMIO_READ (int ) ;
 int MMIO_WRITE (int ,int) ;
 int SCR ;

__attribute__((used)) static int
mmio_uart_present( void )
{
    MMIO_WRITE( SCR, 0x5a );
    if (MMIO_READ(SCR) != 0x5a) return 0;
    MMIO_WRITE( SCR, 0xa5 );
    if (MMIO_READ(SCR) != 0xa5) return 0;
    return 1;
}
