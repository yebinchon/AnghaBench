
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_READ (int ) ;
 int LSR ;
 int UART_LSR_THRE ;

__attribute__((used)) static int
legacy_uart_tr0( void )
{
    return (IO_READ(LSR) & UART_LSR_THRE);
}
