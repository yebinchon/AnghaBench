
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_timer_impl_set_overflow_val (int ) ;
 int s_old_overflow_val ;

__attribute__((used)) static void teardown_overflow(void)
{
    esp_timer_impl_set_overflow_val(s_old_overflow_val);
}
