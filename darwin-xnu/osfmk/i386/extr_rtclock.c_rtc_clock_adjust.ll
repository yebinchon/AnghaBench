; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock.c_rtc_clock_adjust.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock.c_rtc_clock_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pal_rtc_nanotime_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clock_adjust(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  store i32* @pal_rtc_nanotime_info, i32** %3, align 8
  %4 = call i32 (...) @ml_get_interrupts_enabled()
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i64, i64* %2, align 8
  %10 = icmp ult i64 %9, 100
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %2, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @_rtc_nanotime_adjust(i64 %13, i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @rtc_nanotime_set_commpage(i32* %16)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @_rtc_nanotime_adjust(i64, i32*) #1

declare dso_local i32 @rtc_nanotime_set_commpage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
