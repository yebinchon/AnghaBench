
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int *) ;
 int esp_pm_lock_delete (int *) ;
 int * s_pm_lock ;
 int * s_request_mutex ;
 int vSemaphoreDelete (int *) ;

void sdmmc_host_transaction_handler_deinit(void)
{
    assert(s_request_mutex);




    vSemaphoreDelete(s_request_mutex);
    s_request_mutex = ((void*)0);
}
