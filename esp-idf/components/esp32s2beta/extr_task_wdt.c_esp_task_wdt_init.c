
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int twdt_config_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int sys_reset_length; int cpu_reset_length; int level_int_en; int en; int stg1; int stg0; } ;
struct TYPE_6__ {int clk_prescale; } ;
struct TYPE_9__ {int wdt_config2; int wdt_config3; int wdt_feed; void* wdt_wprotect; TYPE_2__ wdt_config0; TYPE_1__ wdt_config1; } ;
struct TYPE_8__ {int timeout; int panic; int intr_handle; int * list; } ;


 int ASSERT_EXIT_CRIT_RETURN (int ,int ) ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int ETS_TG0_WDT_LEVEL_INTR_SOURCE ;
 int PERIPH_TIMG0_MODULE ;
 TYPE_5__ TIMERG0 ;
 int TIMG_WDT_STG_SEL_INT ;
 int TIMG_WDT_STG_SEL_RESET_SYSTEM ;
 void* TIMG_WDT_WKEY_VALUE ;
 TYPE_3__* calloc (int,int) ;
 int esp_intr_alloc (int ,int ,int ,int *,int *) ;
 int periph_module_enable (int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int task_wdt_isr ;
 TYPE_3__* twdt_config ;
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
        TIMERG0.wdt_wprotect=TIMG_WDT_WKEY_VALUE;
        TIMERG0.wdt_config0.sys_reset_length=7;
        TIMERG0.wdt_config0.cpu_reset_length=7;
        TIMERG0.wdt_config0.level_int_en=1;
        TIMERG0.wdt_config0.stg0=TIMG_WDT_STG_SEL_INT;
        TIMERG0.wdt_config0.stg1=TIMG_WDT_STG_SEL_RESET_SYSTEM;
        TIMERG0.wdt_config1.clk_prescale=80*500;
        TIMERG0.wdt_config2=twdt_config->timeout*2000;
        TIMERG0.wdt_config3=twdt_config->timeout*4000;
        TIMERG0.wdt_config0.en=1;
        TIMERG0.wdt_feed=1;
        TIMERG0.wdt_wprotect=0;

    }else{

        twdt_config->panic = panic;
        twdt_config->timeout = timeout;


        TIMERG0.wdt_wprotect=TIMG_WDT_WKEY_VALUE;
        TIMERG0.wdt_config0.en=0;
        TIMERG0.wdt_config2=twdt_config->timeout*2000;
        TIMERG0.wdt_config3=twdt_config->timeout*4000;
        TIMERG0.wdt_config0.en=1;
        TIMERG0.wdt_feed=1;
        TIMERG0.wdt_wprotect=0;
    }
    portEXIT_CRITICAL(&twdt_spinlock);
    return ESP_OK;
}
