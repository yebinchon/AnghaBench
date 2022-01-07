
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef scalar_t__ int64_t ;


 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_INT_WITHIN (int,int ,scalar_t__) ;
 int adjtime (struct timeval*,int *) ;
 scalar_t__ calc_correction (char*,scalar_t__*,scalar_t__*) ;
 int ets_delay_us (int) ;
 int exit_flag ;
 int gettimeofday (struct timeval*,int *) ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__* result_adjtime_correction_us ;
 int settimeofday (struct timeval*,int *) ;
 int start_measure (scalar_t__*,scalar_t__*) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void measure_time_task(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    int64_t main_real_time_us[2];
    int64_t main_sys_time_us[2];
    struct timeval tv_time = {.tv_sec = 1550000000, .tv_usec = 0};
    TEST_ASSERT_EQUAL(0, settimeofday(&tv_time, ((void*)0)));
    struct timeval delta = {.tv_sec = 2000, .tv_usec = 900000};
    adjtime(&delta, ((void*)0));
    gettimeofday(&tv_time, ((void*)0));
    start_measure(&main_sys_time_us[0], &main_real_time_us[0]);

    {
        int64_t real_time_us[2] = { main_real_time_us[0], 0};
        int64_t sys_time_us[2] = { main_sys_time_us[0], 0};

        while (exit_flag == 0) {
            ets_delay_us(2 * 1000000);

            start_measure(&sys_time_us[1], &real_time_us[1]);
            result_adjtime_correction_us[1] += calc_correction("measure", sys_time_us, real_time_us);

            sys_time_us[0] = sys_time_us[1];
            real_time_us[0] = real_time_us[1];
        }
        main_sys_time_us[1] = sys_time_us[1];
        main_real_time_us[1] = real_time_us[1];
    }

    result_adjtime_correction_us[0] = calc_correction("main", main_sys_time_us, main_real_time_us);
    int64_t delta_us = result_adjtime_correction_us[0] - result_adjtime_correction_us[1];
    printf("\nresult of adjtime correction: %lli us, %lli us. delta = %lli us\n", result_adjtime_correction_us[0], result_adjtime_correction_us[1], delta_us);
    TEST_ASSERT_INT_WITHIN(100, 0, delta_us);

    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
