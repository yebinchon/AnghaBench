
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int new_uart_baud_rate ;
struct TYPE_5__ {int (* uart_init ) () ;} ;


 int LEGACY_UART_CLOCK ;
 scalar_t__ PE_parse_boot_argn (char*,unsigned int*,int) ;
 TYPE_1__* gPESF ;
 int legacy_uart_enabled ;
 scalar_t__ legacy_uart_probe () ;
 TYPE_1__ legacy_uart_serial_functions ;
 int lpss_uart_enabled ;
 int lpss_uart_supported ;
 scalar_t__ mmio_uart_probe () ;
 TYPE_1__ mmio_uart_serial_functions ;
 scalar_t__ pcie_mmio_uart_probe () ;
 TYPE_1__ pcie_mmio_uart_serial_functions ;
 int pcie_uart_enabled ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 unsigned int uart_baud_rate ;

int
serial_init( void )
{
    unsigned new_uart_baud_rate = 0;

    if (PE_parse_boot_argn("serialbaud", &new_uart_baud_rate, sizeof (new_uart_baud_rate)))
    {

        if (!((LEGACY_UART_CLOCK / 16) % new_uart_baud_rate)) {
            uart_baud_rate = new_uart_baud_rate;
        }
    }

    if ( mmio_uart_probe() )
    {
        gPESF = &mmio_uart_serial_functions;
        gPESF->uart_init();
        lpss_uart_supported = 1;
        lpss_uart_enabled = 1;
        return 1;
    }
    else if ( legacy_uart_probe() )
    {
        gPESF = &legacy_uart_serial_functions;
        gPESF->uart_init();
        legacy_uart_enabled = 1;
        return 1;
    }
    else if ( pcie_mmio_uart_probe() )
    {
        gPESF = &pcie_mmio_uart_serial_functions;
        gPESF->uart_init();
        pcie_uart_enabled = 1;
        return 1;
    }
    else
    {
        return 0;
    }

}
