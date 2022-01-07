
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CLK ;
 int DLL ;
 int DLM ;
 int FCR ;
 int LCR ;
 int MCR ;
 int MMIO_READ (int ) ;
 int MMIO_WRITE (int ,int) ;
 int RST ;
 int UART_CLK_125M_1 ;
 int UART_CLK_125M_2 ;
 int UART_LCR_8BITS ;
 int UART_LCR_DLAB ;
 int UART_MCR_RTS ;

__attribute__((used)) static void lpss_uart_re_init( void )
{
 uint32_t register_read;

 MMIO_WRITE (RST, 0x7);
 register_read = MMIO_READ (RST);

 MMIO_WRITE (LCR, UART_LCR_DLAB);
 register_read = MMIO_READ (LCR);

 MMIO_WRITE (DLL, 1);
 register_read = MMIO_READ (DLL);

 MMIO_WRITE (DLM, 0);
 register_read = MMIO_READ (DLM);

 MMIO_WRITE (FCR, 1);
 register_read = MMIO_READ (FCR);

 MMIO_WRITE (LCR, UART_LCR_8BITS);
 register_read = MMIO_READ (LCR);

 MMIO_WRITE (MCR, UART_MCR_RTS);
 register_read = MMIO_READ (MCR);

 MMIO_WRITE (CLK, UART_CLK_125M_1);
 register_read = MMIO_READ (CLK);

 MMIO_WRITE (CLK, UART_CLK_125M_2);
 register_read = MMIO_READ (CLK);
}
