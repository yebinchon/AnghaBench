; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_reset_reason.c_check_reset_reason_brownout.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_reset_reason.c_check_reset_reason_brownout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_RST_BROWNOUT = common dso_local global i32 0, align 4
@CHECK_VALUE = common dso_local global i32 0, align 4
@s_noinit_val = common dso_local global i32 0, align 4
@s_rtc_noinit_val = common dso_local global i32 0, align 4
@s_rtc_data_val = common dso_local global i32 0, align 4
@s_rtc_bss_val = common dso_local global i32 0, align 4
@s_rtc_rodata_val = common dso_local global i32 0, align 4
@s_rtc_force_fast_val = common dso_local global i32 0, align 4
@s_rtc_force_slow_val = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_reset_reason_brownout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_reset_reason_brownout() #0 {
  %1 = load i32, i32* @ESP_RST_BROWNOUT, align 4
  %2 = call i32 (...) @esp_reset_reason()
  %3 = call i32 @TEST_ASSERT_EQUAL(i32 %1, i32 %2)
  %4 = load i32, i32* @CHECK_VALUE, align 4
  %5 = load i32, i32* @s_noinit_val, align 4
  %6 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 %4, i32 %5)
  %7 = load i32, i32* @CHECK_VALUE, align 4
  %8 = load i32, i32* @s_rtc_noinit_val, align 4
  %9 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 %7, i32 %8)
  %10 = load i32, i32* @s_rtc_data_val, align 4
  %11 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 0, i32 %10)
  %12 = load i32, i32* @s_rtc_bss_val, align 4
  %13 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 0, i32 %12)
  %14 = load i32, i32* @CHECK_VALUE, align 4
  %15 = load i32, i32* @s_rtc_rodata_val, align 4
  %16 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 %14, i32 %15)
  %17 = load i32, i32* @s_rtc_force_fast_val, align 4
  %18 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 0, i32 %17)
  %19 = load i32, i32* @s_rtc_force_slow_val, align 4
  %20 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 0, i32 %19)
  ret void
}

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @esp_reset_reason(...) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
