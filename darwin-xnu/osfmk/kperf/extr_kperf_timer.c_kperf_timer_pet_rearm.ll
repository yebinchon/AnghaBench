; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_timer_pet_rearm.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_timer_pet_rearm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_timer = type { i64, i32 }

@pet_timer_id = common dso_local global i64 0, align 8
@kperf_timerc = common dso_local global i64 0, align 8
@KPERF_SAMPLING_OFF = common dso_local global i32 0, align 4
@PERF_PET_END = common dso_local global i32 0, align 4
@SAMPLE_OFF = common dso_local global i32 0, align 4
@KPERF_SAMPLING_SHUTDOWN = common dso_local global i32 0, align 4
@SAMPLE_SHUTDOWN = common dso_local global i32 0, align 4
@kperf_timerv = common dso_local global %struct.kperf_timer* null, align 8
@min_period_pet_abstime = common dso_local global i64 0, align 8
@PERF_PET_SCHED = common dso_local global i32 0, align 4
@TIMER_CALL_SYS_CRITICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_timer_pet_rearm(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kperf_timer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store %struct.kperf_timer* null, %struct.kperf_timer** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i64, i64* @pet_timer_id, align 8
  %8 = load i64, i64* @kperf_timerc, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %75

11:                                               ; preds = %1
  %12 = call i32 (...) @kperf_sampling_status()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @KPERF_SAMPLING_OFF, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* @PERF_PET_END, align 4
  %18 = load i32, i32* @SAMPLE_OFF, align 4
  %19 = sext i32 %18 to i64
  %20 = call i32 (i32, i64, ...) @BUF_INFO(i32 %17, i64 %19)
  br label %75

21:                                               ; preds = %11
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @KPERF_SAMPLING_SHUTDOWN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @PERF_PET_END, align 4
  %27 = load i32, i32* @SAMPLE_SHUTDOWN, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 (i32, i64, ...) @BUF_INFO(i32 %26, i64 %28)
  br label %75

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.kperf_timer*, %struct.kperf_timer** @kperf_timerv, align 8
  %33 = load i64, i64* @pet_timer_id, align 8
  %34 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %32, i64 %33
  store %struct.kperf_timer* %34, %struct.kperf_timer** %3, align 8
  %35 = load %struct.kperf_timer*, %struct.kperf_timer** %3, align 8
  %36 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %75

40:                                               ; preds = %31
  %41 = load %struct.kperf_timer*, %struct.kperf_timer** %3, align 8
  %42 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %2, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.kperf_timer*, %struct.kperf_timer** %3, align 8
  %48 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %2, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @min_period_pet_abstime, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @min_period_pet_abstime, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = call i64 (...) @mach_absolute_time()
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %59, %60
  store i64 %61, i64* %5, align 8
  %62 = load i32, i32* @PERF_PET_SCHED, align 4
  %63 = load %struct.kperf_timer*, %struct.kperf_timer** %3, align 8
  %64 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %2, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 (i32, i64, ...) @BUF_INFO(i32 %62, i64 %65, i64 %66, i64 %67, i64 %68)
  %70 = load %struct.kperf_timer*, %struct.kperf_timer** %3, align 8
  %71 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %70, i32 0, i32 1
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* @TIMER_CALL_SYS_CRITICAL, align 4
  %74 = call i32 @timer_call_enter(i32* %71, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %58, %39, %25, %16, %10
  ret void
}

declare dso_local i32 @kperf_sampling_status(...) #1

declare dso_local i32 @BUF_INFO(i32, i64, ...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @timer_call_enter(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
