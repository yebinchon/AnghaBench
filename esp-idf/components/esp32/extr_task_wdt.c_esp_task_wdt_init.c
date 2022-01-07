
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int twdt_config_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int timeout; int panic; int intr_handle; int * list; } ;


 int ASSERT_EXIT_CRIT_RETURN (int ,int ) ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int ETS_TG0_WDT_LEVEL_INTR_SOURCE ;
 int PERIPH_TIMG0_MODULE ;
 int TG0_WDT_TICK_US ;
 int TIMERG0 ;
 int TIMER_WDT_INT ;
 int TIMER_WDT_RESET_SYSTEM ;
 TYPE_1__* calloc (int,int) ;
 int esp_intr_alloc (int ,int ,int ,int *,int *) ;
 int periph_module_enable (int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int task_wdt_isr ;
 int timer_ll_wdt_feed (int *) ;
 int timer_ll_wdt_init (int *) ;
 int timer_ll_wdt_set_enable (int *,int) ;
 int timer_ll_wdt_set_protect (int *,int) ;
 int timer_ll_wdt_set_tick (int *,int) ;
 int timer_ll_wdt_set_timeout (int *,int,int) ;
 int timer_ll_wdt_set_timeout_behavior (int *,int,int ) ;
 TYPE_1__* twdt_config ;
 int twdt_spinlock ;

esp_err_t esp_task_wdt_init(uint32_t timeout, bool panic)
{
    portENTER_CRITICAL(&twdt_spinlock);
    if(twdt_config == ((void*)0)){

        twdt_config = calloc(1, sizeof(twdt_config_t));
        ASSERT_EXIT_CRIT_RETURN((twdt_config != ((void*)0)), ESP_ERR_NO_MEM);

        twdt_config->list = ((void*)0);
        twdt_config->timeout = timeout;
        twdt_config->panic = panic;


        ESP_ERROR_CHECK(esp_intr_alloc(ETS_TG0_WDT_LEVEL_INTR_SOURCE, 0, task_wdt_isr, ((void*)0), &twdt_config->intr_handle));


        periph_module_enable(PERIPH_TIMG0_MODULE);
        timer_ll_wdt_set_protect(&TIMERG0, 0);
        timer_ll_wdt_init(&TIMERG0);
        timer_ll_wdt_set_tick(&TIMERG0, TG0_WDT_TICK_US);

        timer_ll_wdt_set_timeout_behavior(&TIMERG0, 0, TIMER_WDT_INT);
        timer_ll_wdt_set_timeout(&TIMERG0, 0, twdt_config->timeout*1000*1000/TG0_WDT_TICK_US);

        timer_ll_wdt_set_timeout_behavior(&TIMERG0, 1, TIMER_WDT_RESET_SYSTEM);
        timer_ll_wdt_set_timeout(&TIMERG0, 1, 2*twdt_config->timeout*1000*1000/TG0_WDT_TICK_US);
        timer_ll_wdt_set_enable(&TIMERG0, 1);
        timer_ll_wdt_feed(&TIMERG0);
        timer_ll_wdt_set_protect(&TIMERG0, 1);
    } else {

        twdt_config->panic = panic;
        twdt_config->timeout = timeout;


        timer_ll_wdt_set_protect(&TIMERG0, 0);
        timer_ll_wdt_set_enable(&TIMERG0, 0);

        timer_ll_wdt_set_timeout(&TIMERG0, 0, twdt_config->timeout*1000*1000/TG0_WDT_TICK_US);

        timer_ll_wdt_set_timeout(&TIMERG0, 1, 2*twdt_config->timeout*1000*1000/TG0_WDT_TICK_US);
        timer_ll_wdt_set_enable(&TIMERG0, 1);
        timer_ll_wdt_feed(&TIMERG0);
        timer_ll_wdt_set_protect(&TIMERG0, 1);
    }
    portEXIT_CRITICAL(&twdt_spinlock);
    return ESP_OK;
}
