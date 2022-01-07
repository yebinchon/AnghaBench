
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_WRITE (int ,int ) ;
 int RTC_CNTL_BROWN_OUT_INT_CLR ;
 int RTC_CNTL_INT_CLR_REG ;
 int esp_cpu_stall (int) ;
 int esp_restart_noos () ;
 int ets_printf (char*) ;
 int xPortGetCoreID () ;

__attribute__((used)) static void rtc_brownout_isr_handler(void *arg)
{




    REG_WRITE(RTC_CNTL_INT_CLR_REG, RTC_CNTL_BROWN_OUT_INT_CLR);



    esp_cpu_stall(!xPortGetCoreID());
    ets_printf("\r\nBrownout detector was triggered\r\n\r\n");
    esp_restart_noos();
}
