
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_WRITE (int ,int ) ;
 int RTC_CNTL_OPTIONS0_REG ;
 int RTC_CNTL_SW_SYS_RST ;
 int abort () ;
 int ets_delay_us (int) ;
 int uart_tx_flush (int) ;

void bootloader_reset(void)
{







    abort();

}
