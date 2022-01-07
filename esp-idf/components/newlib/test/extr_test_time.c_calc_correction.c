
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 scalar_t__ ADJTIME_CORRECTION_FACTOR ;
 int TEST_ASSERT_INT_WITHIN (int,int ,scalar_t__) ;
 int TEST_ASSERT_TRUE (int) ;
 int printf (char*,char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int64_t calc_correction(const char* tag, int64_t* sys_time, int64_t* real_time)
{
    int64_t dt_real_time_us = real_time[1] - real_time[0];
    int64_t dt_sys_time_us = sys_time[1] - sys_time[0];
    int64_t calc_correction_us = dt_real_time_us >> ADJTIME_CORRECTION_FACTOR;
    int64_t real_correction_us = dt_sys_time_us - dt_real_time_us;
    int64_t error_us = calc_correction_us - real_correction_us;
    printf("%s: dt_real_time = %lli us, dt_sys_time = %lli us, calc_correction = %lli us, error = %lli us\n",
            tag, dt_real_time_us, dt_sys_time_us, calc_correction_us, error_us);

    TEST_ASSERT_TRUE(dt_sys_time_us > 0 && dt_real_time_us > 0);
    TEST_ASSERT_INT_WITHIN(100, 0, error_us);
    return real_correction_us;
}
