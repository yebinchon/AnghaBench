
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_5__ {scalar_t__ en; } ;
struct TYPE_7__ {scalar_t__ wdt_wprotect; TYPE_1__ wdt_config0; } ;
struct TYPE_6__ {int intr_handle; int * list; } ;


 int ASSERT_EXIT_CRIT_RETURN (int ,int ) ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 TYPE_4__ TIMERG0 ;
 scalar_t__ TIMG_WDT_WKEY_VALUE ;
 int esp_intr_free (int ) ;
 int free (TYPE_2__*) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 TYPE_2__* twdt_config ;
 int twdt_spinlock ;

esp_err_t esp_task_wdt_deinit(void)
{
    portENTER_CRITICAL(&twdt_spinlock);

    ASSERT_EXIT_CRIT_RETURN((twdt_config != ((void*)0)), ESP_ERR_NOT_FOUND);

    ASSERT_EXIT_CRIT_RETURN((twdt_config->list == ((void*)0)), ESP_ERR_INVALID_STATE);


    TIMERG0.wdt_wprotect=TIMG_WDT_WKEY_VALUE;
    TIMERG0.wdt_config0.en=0;
    TIMERG0.wdt_wprotect=0;

    ESP_ERROR_CHECK(esp_intr_free(twdt_config->intr_handle));
    free(twdt_config);
    twdt_config = ((void*)0);
    portEXIT_CRITICAL(&twdt_spinlock);
    return ESP_OK;
}
