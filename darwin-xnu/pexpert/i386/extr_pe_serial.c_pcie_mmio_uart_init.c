
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uart_initted ;

__attribute__((used)) static void
pcie_mmio_uart_init( void )
{
    uart_initted = 1;
}
