; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_timer_stop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }

@kperf_timerc = common dso_local global i32 0, align 4
@kperf_timerv = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_timer_stop() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %32, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @kperf_timerc, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kperf_timerv, align 8
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %32

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %24, %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kperf_timerv, align 8
  %18 = load i32, i32* %1, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %16

25:                                               ; preds = %16
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kperf_timerv, align 8
  %27 = load i32, i32* %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @timer_call_cancel(i32* %30)
  br label %32

32:                                               ; preds = %25, %14
  %33 = load i32, i32* %1, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %2

35:                                               ; preds = %2
  %36 = call i32 @kperf_pet_config(i32 0)
  ret void
}

declare dso_local i32 @timer_call_cancel(i32*) #1

declare dso_local i32 @kperf_pet_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
