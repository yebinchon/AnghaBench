
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMIO_WRITE (int ,int) ;
 int THR ;

__attribute__((used)) static void
mmio_uart_td0( int c )
{
    MMIO_WRITE( THR, c );
}
