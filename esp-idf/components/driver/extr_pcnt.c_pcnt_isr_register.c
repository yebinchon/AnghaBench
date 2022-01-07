
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcnt_isr_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ETS_PCNT_INTR_SOURCE ;
 int PCNT_ADDRESS_ERR_STR ;
 int PCNT_CHECK (int ,int ,int ) ;
 int esp_intr_alloc (int ,int,void (*) (void*),void*,int *) ;

esp_err_t pcnt_isr_register(void (*fun)(void*), void * arg, int intr_alloc_flags, pcnt_isr_handle_t *handle)
{
    PCNT_CHECK(fun != ((void*)0), PCNT_ADDRESS_ERR_STR, ESP_ERR_INVALID_ARG);
    return esp_intr_alloc(ETS_PCNT_INTR_SOURCE, intr_alloc_flags, fun, arg, handle);
}
