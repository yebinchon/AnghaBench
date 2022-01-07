; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_cpu_freq_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_cpu_freq_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_clk_cpu_freq_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %27 [
    i32 128, label %5
    i32 130, label %9
    i32 129, label %12
    i32 132, label %15
    i32 131, label %18
    i32 133, label %21
    i32 134, label %24
  ]

5:                                                ; preds = %1
  %6 = call i32 (...) @rtc_clk_xtal_freq_get()
  %7 = load i32, i32* @MHZ, align 4
  %8 = mul nsw i32 %6, %7
  store i32 %8, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load i32, i32* @MHZ, align 4
  %11 = mul nsw i32 2, %10
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load i32, i32* @MHZ, align 4
  %14 = mul nsw i32 80, %13
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @MHZ, align 4
  %17 = mul nsw i32 160, %16
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* @MHZ, align 4
  %20 = mul nsw i32 240, %19
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load i32, i32* @MHZ, align 4
  %23 = mul nsw i32 80, %22
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @MHZ, align 4
  %26 = mul nsw i32 160, %25
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = call i32 @assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %24, %21, %18, %15, %12, %9, %5
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @rtc_clk_xtal_freq_get(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
