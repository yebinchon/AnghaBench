
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int touch_pad_intr_mask_t ;
typedef int * intr_handler_t ;
typedef int esp_err_t ;


 int RTC_CNTL_TOUCH_DONE_INT_ENA_S ;
 int TOUCH_PAD_INTR_MASK_ALL ;
 int assert (int ) ;
 int rtc_isr_register (int *,void*,int) ;

esp_err_t touch_pad_isr_register(intr_handler_t fn, void *arg, touch_pad_intr_mask_t intr_mask)
{
    assert(fn != ((void*)0));
    return rtc_isr_register(fn, arg, TOUCH_PAD_INTR_MASK_ALL & (intr_mask << RTC_CNTL_TOUCH_DONE_INT_ENA_S));
}
