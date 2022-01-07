
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int new_mmio_uart_base ;


 unsigned int MMIO_UART2_BASE ;
 unsigned int MMIO_UART2_BASE_LEGACY ;
 scalar_t__ PE_parse_boot_argn (char*,unsigned int*,int) ;
 unsigned int mmio_uart_base ;
 scalar_t__ mmio_uart_present () ;

__attribute__((used)) static int
mmio_uart_probe( void )
{
    unsigned new_mmio_uart_base = 0;


    if (PE_parse_boot_argn("mmio_uart", &new_mmio_uart_base, sizeof (new_mmio_uart_base)))
    {

        if (new_mmio_uart_base == 0) {
            return 0;
        }

        mmio_uart_base = new_mmio_uart_base;
        return 1;
    }


    mmio_uart_base = MMIO_UART2_BASE;
    if (mmio_uart_present()) {
      return 1;
    }

    mmio_uart_base = MMIO_UART2_BASE_LEGACY;
    if (mmio_uart_present()) {
      return 1;
    }


    return 0;
}
