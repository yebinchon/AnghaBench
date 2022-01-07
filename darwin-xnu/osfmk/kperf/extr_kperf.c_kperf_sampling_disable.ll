; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf.c_kperf_sampling_disable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf.c_kperf_sampling_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sampling_status = common dso_local global i64 0, align 8
@KPERF_SAMPLING_ON = common dso_local global i64 0, align 8
@KPERF_SAMPLING_SHUTDOWN = common dso_local global i64 0, align 8
@KPERF_SAMPLING_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kperf_sampling_disable() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @sampling_status, align 8
  %3 = load i64, i64* @KPERF_SAMPLING_ON, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %11

6:                                                ; preds = %0
  %7 = load i64, i64* @KPERF_SAMPLING_SHUTDOWN, align 8
  store i64 %7, i64* @sampling_status, align 8
  %8 = call i32 (...) @kperf_timer_stop()
  %9 = load i64, i64* @KPERF_SAMPLING_OFF, align 8
  store i64 %9, i64* @sampling_status, align 8
  %10 = call i32 (...) @kperf_lightweight_pet_active_update()
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %6, %5
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

declare dso_local i32 @kperf_timer_stop(...) #1

declare dso_local i32 @kperf_lightweight_pet_active_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
