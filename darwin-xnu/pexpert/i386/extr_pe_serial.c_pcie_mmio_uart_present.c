
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCIE_MMIO_READ (int ) ;
 int PCIE_MMIO_WRITE (int ,int) ;
 int SCR ;

__attribute__((used)) static int
pcie_mmio_uart_present( void )
{

    PCIE_MMIO_WRITE( SCR, 0x5a );
    if (PCIE_MMIO_READ(SCR) != 0x5a) return 0;
    PCIE_MMIO_WRITE( SCR, 0xa5 );
    if (PCIE_MMIO_READ(SCR) != 0xa5) return 0;

    return 1;
}
