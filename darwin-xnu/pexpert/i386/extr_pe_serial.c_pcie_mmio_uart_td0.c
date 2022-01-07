
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCIE_MMIO_WRITE (int ,int) ;
 int THR ;

__attribute__((used)) static void
pcie_mmio_uart_td0( int c )
{
    PCIE_MMIO_WRITE( THR, c );
}
