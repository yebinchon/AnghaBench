
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ESP_LOGI (int ,char*,...) ;
 int ESP_LOGW (int ,char*,char*) ;
 int TAG ;
 int TOUCH_PAD_MAX ;
 int TOUCH_THRESH_PERCENT ;
 int portTICK_PERIOD_MS ;
 int* s_pad_activated ;
 int* s_pad_init_val ;
 int touch_pad_clear_status () ;
 int touch_pad_intr_disable () ;
 int touch_pad_intr_enable () ;
 int touch_pad_read_filtered (int,int*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void tp_example_read_task(void *pvParameter)
{
    static int show_message;
    int change_mode = 0;
    int filter_mode = 0;
    while (1) {
        if (filter_mode == 0) {

            touch_pad_intr_enable();
            for (int i = 0; i < TOUCH_PAD_MAX; i++) {
                if (s_pad_activated[i] == 1) {
                    ESP_LOGI(TAG, "T%d activated!", i);

                    vTaskDelay(200 / portTICK_PERIOD_MS);

                    s_pad_activated[i] = 0;


                    show_message = 1;
                }
            }
        } else {

            touch_pad_intr_disable();
            touch_pad_clear_status();
            for (int i = 0; i < TOUCH_PAD_MAX; i++) {
                uint16_t value = 0;
                touch_pad_read_filtered(i, &value);
                if (value < s_pad_init_val[i] * TOUCH_THRESH_PERCENT / 100) {
                    ESP_LOGI(TAG, "T%d activated!", i);
                    ESP_LOGI(TAG, "value: %d; init val: %d", value, s_pad_init_val[i]);
                    vTaskDelay(200 / portTICK_PERIOD_MS);

                    change_mode = 1;
                    show_message = 1;
                }
            }
        }

        vTaskDelay(10 / portTICK_PERIOD_MS);



        if (show_message++ % 500 == 0) {
            ESP_LOGI(TAG, "Waiting for any pad being touched...");
        }


        if (change_mode++ % 2000 == 0) {
            filter_mode = !filter_mode;
            ESP_LOGW(TAG, "Change mode...%s", filter_mode == 0 ? "interrupt mode" : "filter mode");
        }
    }
}
