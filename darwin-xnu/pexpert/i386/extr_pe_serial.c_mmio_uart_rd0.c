
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMIO_READ (int ) ;
 int RBR ;

__attribute__((used)) static int
mmio_uart_rd0( void )
{
    return MMIO_READ( RBR );
}
