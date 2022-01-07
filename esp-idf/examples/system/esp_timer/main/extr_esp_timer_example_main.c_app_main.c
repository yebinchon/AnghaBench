
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ esp_timer_handle_t ;
struct TYPE_3__ {char* name; void* arg; int * callback; } ;
typedef TYPE_1__ esp_timer_create_args_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 int esp_light_sleep_start () ;
 int esp_sleep_enable_timer_wakeup (int) ;
 int esp_timer_create (TYPE_1__ const*,scalar_t__*) ;
 int esp_timer_delete (scalar_t__) ;
 int esp_timer_dump (int ) ;
 int esp_timer_get_time () ;
 int esp_timer_start_once (scalar_t__,int) ;
 int esp_timer_start_periodic (scalar_t__,int) ;
 int esp_timer_stop (scalar_t__) ;
 int oneshot_timer_callback ;
 int periodic_timer_callback ;
 int stdout ;
 int usleep (int) ;

void app_main(void)
{






    const esp_timer_create_args_t periodic_timer_args = {
            .callback = &periodic_timer_callback,

            .name = "periodic"
    };

    esp_timer_handle_t periodic_timer;
    ESP_ERROR_CHECK(esp_timer_create(&periodic_timer_args, &periodic_timer));


    const esp_timer_create_args_t oneshot_timer_args = {
            .callback = &oneshot_timer_callback,

            .arg = (void*) periodic_timer,
            .name = "one-shot"
    };
    esp_timer_handle_t oneshot_timer;
    ESP_ERROR_CHECK(esp_timer_create(&oneshot_timer_args, &oneshot_timer));


    ESP_ERROR_CHECK(esp_timer_start_periodic(periodic_timer, 500000));
    ESP_ERROR_CHECK(esp_timer_start_once(oneshot_timer, 5000000));
    ESP_LOGI(TAG, "Started timers, time since boot: %lld us", esp_timer_get_time());


    for (int i = 0; i < 5; ++i) {
        ESP_ERROR_CHECK(esp_timer_dump(stdout));
        usleep(2000000);
    }




    ESP_LOGI(TAG, "Entering light sleep for 0.5s, time since boot: %lld us",
            esp_timer_get_time());

    ESP_ERROR_CHECK(esp_sleep_enable_timer_wakeup(500000));
    esp_light_sleep_start();

    ESP_LOGI(TAG, "Woke up from light sleep, time since boot: %lld us",
                esp_timer_get_time());


    usleep(2000000);


    ESP_ERROR_CHECK(esp_timer_stop(periodic_timer));
    ESP_ERROR_CHECK(esp_timer_delete(periodic_timer));
    ESP_ERROR_CHECK(esp_timer_delete(oneshot_timer));
    ESP_LOGI(TAG, "Stopped and deleted timers");
}
