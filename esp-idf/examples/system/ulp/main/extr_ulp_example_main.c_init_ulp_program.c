
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int rtc_num; scalar_t__ reg; } ;


 int ESP_ERROR_CHECK (int ) ;
 size_t GPIO_NUM_0 ;
 int GPIO_NUM_12 ;
 int GPIO_NUM_15 ;
 int RTC_GPIO_MODE_INPUT_ONLY ;
 int RTC_SLOW_MEM ;
 int assert (int) ;
 int esp_deep_sleep_disable_rom_logging () ;
 TYPE_1__* rtc_gpio_desc ;
 int rtc_gpio_hold_en (size_t) ;
 int rtc_gpio_init (size_t) ;
 int rtc_gpio_isolate (int ) ;
 int rtc_gpio_pulldown_dis (size_t) ;
 int rtc_gpio_pullup_dis (size_t) ;
 int rtc_gpio_set_direction (size_t,int ) ;
 int ulp_debounce_counter ;
 int ulp_debounce_max_count ;
 int ulp_edge_count_to_wake_up ;
 int ulp_entry ;
 int ulp_io_number ;
 int ulp_load_binary (int ,int,int) ;
 int ulp_main_bin_end ;
 int ulp_main_bin_start ;
 scalar_t__ ulp_next_edge ;
 int ulp_run (int *) ;
 int ulp_set_wakeup_period (int ,int) ;

__attribute__((used)) static void init_ulp_program(void)
{
    esp_err_t err = ulp_load_binary(0, ulp_main_bin_start,
            (ulp_main_bin_end - ulp_main_bin_start) / sizeof(uint32_t));
    ESP_ERROR_CHECK(err);


    gpio_num_t gpio_num = GPIO_NUM_0;
    assert(rtc_gpio_desc[gpio_num].reg && "GPIO used for pulse counting must be an RTC IO");
    ulp_debounce_counter = 3;
    ulp_debounce_max_count = 3;
    ulp_next_edge = 0;
    ulp_io_number = rtc_gpio_desc[gpio_num].rtc_num;
    ulp_edge_count_to_wake_up = 10;


    rtc_gpio_init(gpio_num);
    rtc_gpio_set_direction(gpio_num, RTC_GPIO_MODE_INPUT_ONLY);
    rtc_gpio_pulldown_dis(gpio_num);
    rtc_gpio_pullup_dis(gpio_num);
    rtc_gpio_hold_en(gpio_num);





    rtc_gpio_isolate(GPIO_NUM_12);
    rtc_gpio_isolate(GPIO_NUM_15);
    esp_deep_sleep_disable_rom_logging();




    ulp_set_wakeup_period(0, 20000);


    err = ulp_run(&ulp_entry - RTC_SLOW_MEM);
    ESP_ERROR_CHECK(err);
}
