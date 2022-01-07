
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_READ (int ) ;
 int RBR ;

__attribute__((used)) static int
legacy_uart_rd0( void )
{
    return IO_READ( RBR );
}
