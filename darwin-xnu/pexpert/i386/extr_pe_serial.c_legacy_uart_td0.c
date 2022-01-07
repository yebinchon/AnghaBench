
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_WRITE (int ,int) ;
 int THR ;

__attribute__((used)) static void
legacy_uart_td0( int c )
{
    IO_WRITE( THR, c );
}
