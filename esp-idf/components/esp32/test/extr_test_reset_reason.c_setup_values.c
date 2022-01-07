
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CHECK_VALUE ;
 int TEST_ASSERT_EQUAL_HEX32_MESSAGE (void*,int ,char*) ;
 void* s_noinit_val ;
 void* s_rtc_bss_val ;
 void* s_rtc_data_val ;
 void* s_rtc_force_fast_val ;
 void* s_rtc_force_slow_val ;
 void* s_rtc_noinit_val ;
 int s_rtc_rodata_val ;

__attribute__((used)) static void setup_values(void)
{
    s_noinit_val = CHECK_VALUE;
    s_rtc_noinit_val = CHECK_VALUE;
    s_rtc_data_val = CHECK_VALUE;
    s_rtc_bss_val = CHECK_VALUE;
    TEST_ASSERT_EQUAL_HEX32_MESSAGE(CHECK_VALUE, s_rtc_rodata_val,
            "s_rtc_rodata_val should already be set up");
    s_rtc_force_fast_val = CHECK_VALUE;
    s_rtc_force_slow_val = CHECK_VALUE;
}
