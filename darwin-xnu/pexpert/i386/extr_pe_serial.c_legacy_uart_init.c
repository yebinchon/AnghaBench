
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* uart_set_baud_rate ) (int ,int ) ;} ;


 int FCR ;
 int IER ;
 int IO_READ (int ) ;
 int IO_WRITE (int ,int) ;
 int LCR ;
 int MCR ;
 int RBR ;
 int UART_LCR_8BITS ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 TYPE_1__* gPESF ;
 int stub1 (int ,int ) ;
 int uart_baud_rate ;
 int uart_initted ;

__attribute__((used)) static void
legacy_uart_init( void )
{


    IO_WRITE( MCR, 0 );
    IO_WRITE( IER, 0 );



    IO_WRITE( FCR, 0 );



    IO_WRITE( LCR, UART_LCR_8BITS );



    gPESF->uart_set_baud_rate ( 0, uart_baud_rate );



    IO_WRITE( MCR, UART_MCR_DTR | UART_MCR_RTS );



    IO_READ( RBR );

    uart_initted = 1;
}
