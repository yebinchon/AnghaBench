
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR ;
 int PCIE_MMIO_READ (int ) ;
 int UART_LSR_THRE ;

__attribute__((used)) static int
pcie_mmio_uart_tr0( void )
{
    return (PCIE_MMIO_READ(LSR) & UART_LSR_THRE);
}
