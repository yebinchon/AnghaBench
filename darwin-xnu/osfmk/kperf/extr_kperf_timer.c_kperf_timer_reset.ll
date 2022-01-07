; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_timer_reset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_timer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@KPERF_PET_DEFAULT_IDLE_RATE = common dso_local global i32 0, align 4
@kperf_timerc = common dso_local global i32 0, align 4
@kperf_timerv = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_timer_reset() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @kperf_timer_set_petid(i32 999)
  %3 = load i32, i32* @KPERF_PET_DEFAULT_IDLE_RATE, align 4
  %4 = call i32 @kperf_set_pet_idle_rate(i32 %3)
  %5 = call i32 @kperf_set_lightweight_pet(i32 0)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %26, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @kperf_timerc, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kperf_timerv, align 8
  %12 = load i32, i32* %1, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kperf_timerv, align 8
  %17 = load i32, i32* %1, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kperf_timerv, align 8
  %22 = load i32, i32* %1, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %10
  %27 = load i32, i32* %1, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %6

29:                                               ; preds = %6
  ret void
}

declare dso_local i32 @kperf_timer_set_petid(i32) #1

declare dso_local i32 @kperf_set_pet_idle_rate(i32) #1

declare dso_local i32 @kperf_set_lightweight_pet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
