
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int new_pcie_mmio_uart_base ;


 unsigned int PCIE_MMIO_UART_BASE ;
 scalar_t__ PE_parse_boot_argn (char*,unsigned int*,int) ;
 unsigned int pcie_mmio_uart_base ;
 scalar_t__ pcie_mmio_uart_present () ;

__attribute__((used)) static int
pcie_mmio_uart_probe( void )
{
    unsigned new_pcie_mmio_uart_base = 0;


    if (PE_parse_boot_argn("pcie_mmio_uart", &new_pcie_mmio_uart_base, sizeof (new_pcie_mmio_uart_base)))
    {

        if (new_pcie_mmio_uart_base == 0) {
            return 0;
        }
        pcie_mmio_uart_base = new_pcie_mmio_uart_base;
        return 1;
    }

    pcie_mmio_uart_base = PCIE_MMIO_UART_BASE;
    if (pcie_mmio_uart_present()) {
      return 1;
    }


    return 0;
}
