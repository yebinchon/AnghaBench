
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_3__ {int intr_handle; int * list; } ;


 int ASSERT_EXIT_CRIT_RETURN (int ,int ) ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int TIMERG0 ;
 int esp_intr_free (int ) ;
 int free (TYPE_1__*) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int timer_ll_wdt_set_enable (int *,int) ;
 int timer_ll_wdt_set_protect (int *,int) ;
 TYPE_1__* twdt_config ;
 int twdt_spinlock ;

esp_err_t esp_task_wdt_deinit(void)
{
    portENTER_CRITICAL(&twdt_spinlock);

    ASSERT_EXIT_CRIT_RETURN((twdt_config != ((void*)0)), ESP_ERR_NOT_FOUND);

    ASSERT_EXIT_CRIT_RETURN((twdt_config->list == ((void*)0)), ESP_ERR_INVALID_STATE);


    timer_ll_wdt_set_protect(&TIMERG0, 0);
    timer_ll_wdt_set_enable(&TIMERG0, 0);
    timer_ll_wdt_set_protect(&TIMERG0, 1);

    ESP_ERROR_CHECK(esp_intr_free(twdt_config->intr_handle));
    free(twdt_config);
    twdt_config = ((void*)0);
    portEXIT_CRITICAL(&twdt_spinlock);
    return ESP_OK;
}
