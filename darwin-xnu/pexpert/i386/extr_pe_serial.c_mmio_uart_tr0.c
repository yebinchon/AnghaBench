
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR ;
 int MMIO_READ (int ) ;
 int UART_LSR_THRE ;

__attribute__((used)) static int
mmio_uart_tr0( void )
{
    return (MMIO_READ(LSR) & UART_LSR_THRE);
}
