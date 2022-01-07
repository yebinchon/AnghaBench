; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_cpu_freq_set_fast.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_cpu_freq_set_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_cur_freq = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_2M = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_XTAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_cpu_freq_set_fast(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @s_cur_freq, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @RTC_CPU_FREQ_2M, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* @s_cur_freq, align 8
  %13 = load i64, i64* @RTC_CPU_FREQ_2M, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %7
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @rtc_clk_cpu_freq_set(i64 %16)
  br label %33

18:                                               ; preds = %11
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @RTC_CPU_FREQ_XTAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (...) @rtc_clk_cpu_freq_to_xtal()
  br label %32

24:                                               ; preds = %18
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @RTC_CPU_FREQ_XTAL, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @rtc_clk_cpu_freq_to_pll(i64 %29)
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %15
  br label %34

34:                                               ; preds = %6, %33
  ret void
}

declare dso_local i32 @rtc_clk_cpu_freq_set(i64) #1

declare dso_local i32 @rtc_clk_cpu_freq_to_xtal(...) #1

declare dso_local i32 @rtc_clk_cpu_freq_to_pll(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
