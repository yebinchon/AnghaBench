
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_ERROR_CHECK (int ) ;
 int RTC_SLOW_MEM ;
 int ulp_entry ;
 int ulp_run (int *) ;
 scalar_t__ ulp_sample_counter ;

__attribute__((used)) static void start_ulp_program(void)
{

    ulp_sample_counter = 0;


    esp_err_t err = ulp_run(&ulp_entry - RTC_SLOW_MEM);
    ESP_ERROR_CHECK(err);
}
