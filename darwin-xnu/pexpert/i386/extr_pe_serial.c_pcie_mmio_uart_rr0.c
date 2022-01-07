
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR ;
 unsigned char PCIE_MMIO_READ (int ) ;
 int RBR ;
 unsigned char UART_LSR_DR ;
 unsigned char UART_LSR_FE ;
 unsigned char UART_LSR_OE ;
 unsigned char UART_LSR_PE ;

__attribute__((used)) static int
pcie_mmio_uart_rr0( void )
{
    unsigned char lsr;

    lsr = PCIE_MMIO_READ( LSR );

    if ( lsr & (UART_LSR_FE | UART_LSR_PE | UART_LSR_OE) )
    {
        PCIE_MMIO_READ( RBR );
        return 0;
    }

    return (lsr & UART_LSR_DR);
}
