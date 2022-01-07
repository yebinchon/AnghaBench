; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_reset_reason.c_setup_values.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_reset_reason.c_setup_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHECK_VALUE = common dso_local global i8* null, align 8
@s_noinit_val = common dso_local global i8* null, align 8
@s_rtc_noinit_val = common dso_local global i8* null, align 8
@s_rtc_data_val = common dso_local global i8* null, align 8
@s_rtc_bss_val = common dso_local global i8* null, align 8
@s_rtc_rodata_val = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"s_rtc_rodata_val should already be set up\00", align 1
@s_rtc_force_fast_val = common dso_local global i8* null, align 8
@s_rtc_force_slow_val = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_values() #0 {
  %1 = load i8*, i8** @CHECK_VALUE, align 8
  store i8* %1, i8** @s_noinit_val, align 8
  %2 = load i8*, i8** @CHECK_VALUE, align 8
  store i8* %2, i8** @s_rtc_noinit_val, align 8
  %3 = load i8*, i8** @CHECK_VALUE, align 8
  store i8* %3, i8** @s_rtc_data_val, align 8
  %4 = load i8*, i8** @CHECK_VALUE, align 8
  store i8* %4, i8** @s_rtc_bss_val, align 8
  %5 = load i8*, i8** @CHECK_VALUE, align 8
  %6 = load i32, i32* @s_rtc_rodata_val, align 4
  %7 = call i32 @TEST_ASSERT_EQUAL_HEX32_MESSAGE(i8* %5, i32 %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** @CHECK_VALUE, align 8
  store i8* %8, i8** @s_rtc_force_fast_val, align 8
  %9 = load i8*, i8** @CHECK_VALUE, align 8
  store i8* %9, i8** @s_rtc_force_slow_val, align 8
  ret void
}

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX32_MESSAGE(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
