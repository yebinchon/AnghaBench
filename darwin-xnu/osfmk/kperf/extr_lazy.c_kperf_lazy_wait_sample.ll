; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_lazy.c_kperf_lazy_wait_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_lazy.c_kperf_lazy_wait_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, i32 }
%struct.kperf_context = type { i64*, i32, i32, i32, %struct.TYPE_5__* }
%struct.kperf_sample = type { i32 }

@THREAD_NOT_RUNNABLE = common dso_local global i64 0, align 8
@kperf_lazy_wait_time_threshold = common dso_local global i64 0, align 8
@PERF_LZ_WAITSAMPLE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_LAZY_WAIT = common dso_local global i32 0, align 4
@SAMPLE_FLAG_PEND_USER = common dso_local global i32 0, align 4
@SAMPLE_FLAG_CONTINUATION = common dso_local global i32 0, align 4
@SAMPLE_FLAG_NON_INTERRUPT = common dso_local global i32 0, align 4
@kperf_lazy_wait_action = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_lazy_wait_sample(%struct.TYPE_5__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kperf_context, align 8
  %13 = alloca %struct.kperf_sample*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @THREAD_NOT_RUNNABLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %102

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %102

30:                                               ; preds = %21
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = call i64 @thread_get_last_wait_duration(%struct.TYPE_5__* %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @kperf_lazy_wait_time_threshold, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %102

36:                                               ; preds = %30
  %37 = call i64 (...) @mach_absolute_time()
  store i64 %37, i64* %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @timer_update(i32* %39, i64 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @timer_update(i32* %43, i64 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  %48 = call i64 @timer_grab(i32* %47)
  store i64 %48, i64* %9, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = call i64 @timer_grab(i32* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = call i64 @timer_grab(i32* %53)
  %55 = add nsw i64 %51, %54
  store i64 %55, i64* %10, align 8
  %56 = load i32, i32* @PERF_LZ_WAITSAMPLE, align 4
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @BUF_DATA(i32 %56, i64 %57, i64 %58, i64 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = call i32 @get_threadtask(%struct.TYPE_5__* %61)
  store i32 %62, i32* %11, align 4
  %63 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %12, i32 0, i32 0
  %64 = load i64*, i64** %6, align 8
  store i64* %64, i64** %63, align 8
  %65 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %12, i32 0, i32 1
  %66 = load i32, i32* @TRIGGER_TYPE_LAZY_WAIT, align 4
  store i32 %66, i32* %65, align 8
  %67 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %12, i32 0, i32 2
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @task_pid(i32 %68)
  store i32 %69, i32* %67, align 4
  %70 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %12, i32 0, i32 3
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %70, align 8
  %72 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %12, i32 0, i32 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %72, align 8
  %74 = call %struct.kperf_sample* (...) @kperf_intr_sample_buffer()
  store %struct.kperf_sample* %74, %struct.kperf_sample** %13, align 8
  %75 = load %struct.kperf_sample*, %struct.kperf_sample** %13, align 8
  %76 = icmp ne %struct.kperf_sample* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %36
  br label %102

78:                                               ; preds = %36
  %79 = load i32, i32* @SAMPLE_FLAG_PEND_USER, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i64, i64* %5, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @SAMPLE_FLAG_CONTINUATION, align 4
  br label %85

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = call i32 (...) @ml_at_interrupt_context()
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @SAMPLE_FLAG_NON_INTERRUPT, align 4
  br label %94

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i32 [ %92, %91 ], [ 0, %93 ]
  %96 = load i32, i32* %14, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %14, align 4
  %98 = load %struct.kperf_sample*, %struct.kperf_sample** %13, align 8
  %99 = load i32, i32* @kperf_lazy_wait_action, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @kperf_sample(%struct.kperf_sample* %98, %struct.kperf_context* %12, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %20, %29, %77, %94, %30
  ret void
}

declare dso_local i64 @thread_get_last_wait_duration(%struct.TYPE_5__*) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @timer_update(i32*, i64) #1

declare dso_local i64 @timer_grab(i32*) #1

declare dso_local i32 @BUF_DATA(i32, i64, i64, i64) #1

declare dso_local i32 @get_threadtask(%struct.TYPE_5__*) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local %struct.kperf_sample* @kperf_intr_sample_buffer(...) #1

declare dso_local i32 @ml_at_interrupt_context(...) #1

declare dso_local i32 @kperf_sample(%struct.kperf_sample*, %struct.kperf_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
