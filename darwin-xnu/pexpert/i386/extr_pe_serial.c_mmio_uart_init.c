
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* uart_set_baud_rate ) (int ,scalar_t__) ;} ;


 scalar_t__ DEFAULT_UART_BAUD_RATE ;
 int FCR ;
 int IER ;
 int LCR ;
 int MCR ;
 int MMIO_READ (int ) ;
 int MMIO_WRITE (int ,int) ;
 int RBR ;
 int UART_LCR_8BITS ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 TYPE_1__* gPESF ;
 int stub1 (int ,scalar_t__) ;
 scalar_t__ uart_baud_rate ;
 int uart_initted ;

__attribute__((used)) static void
mmio_uart_init( void )
{


    MMIO_WRITE( MCR, 0 );
    MMIO_WRITE( IER, 0 );



    MMIO_WRITE( FCR, 0 );



    MMIO_WRITE( LCR, UART_LCR_8BITS );



    if (uart_baud_rate != DEFAULT_UART_BAUD_RATE)
    {
        gPESF->uart_set_baud_rate ( 0, uart_baud_rate );
    }



    MMIO_WRITE( MCR, UART_MCR_DTR | UART_MCR_RTS );



    MMIO_READ( RBR );

    uart_initted = 1;
}
