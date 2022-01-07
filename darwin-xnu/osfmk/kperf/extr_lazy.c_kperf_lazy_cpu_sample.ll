; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_lazy.c_kperf_lazy_cpu_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_lazy.c_kperf_lazy_cpu_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.kperf_context = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.kperf_sample = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@kperf_lazy_cpu_time_threshold = common dso_local global i64 0, align 8
@PERF_LZ_CPUSAMPLE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_LAZY_CPU = common dso_local global i32 0, align 4
@kperf_lazy_cpu_action = common dso_local global i32 0, align 4
@SAMPLE_FLAG_PEND_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_lazy_cpu_sample(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kperf_context, align 8
  %14 = alloca %struct.kperf_sample*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = call i64 (...) @ml_get_interrupts_enabled()
  %16 = load i64, i64* @FALSE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call %struct.TYPE_7__* (...) @current_processor()
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %7, align 8
  %21 = call i64 (...) @mach_absolute_time()
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @kperf_lazy_cpu_time_threshold, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @timer_update(i32* %35, i64 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @timer_update(i32* %39, i64 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = call i64 @timer_grab(i32* %43)
  store i64 %44, i64* %10, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = call i64 @timer_grab(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = call i64 @timer_grab(i32* %49)
  %51 = add nsw i64 %47, %50
  store i64 %51, i64* %11, align 8
  %52 = load i32, i32* @PERF_LZ_CPUSAMPLE, align 4
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = call i32 @BUF_DATA(i32 %52, i64 %53, i64 %54, i32 %57, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = call i32 @get_threadtask(%struct.TYPE_6__* %63)
  store i32 %64, i32* %12, align 4
  %65 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %13, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %13, i32 0, i32 1
  %67 = load i32, i32* @TRIGGER_TYPE_LAZY_CPU, align 4
  store i32 %67, i32* %66, align 4
  %68 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %13, i32 0, i32 2
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @task_pid(i32 %69)
  store i32 %70, i32* %68, align 8
  %71 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %13, i32 0, i32 3
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %71, align 4
  %73 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %13, i32 0, i32 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %73, align 8
  %75 = call %struct.kperf_sample* (...) @kperf_intr_sample_buffer()
  store %struct.kperf_sample* %75, %struct.kperf_sample** %14, align 8
  %76 = load %struct.kperf_sample*, %struct.kperf_sample** %14, align 8
  %77 = icmp ne %struct.kperf_sample* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %30
  br label %86

79:                                               ; preds = %30
  %80 = load %struct.kperf_sample*, %struct.kperf_sample** %14, align 8
  %81 = load i32, i32* @kperf_lazy_cpu_action, align 4
  %82 = load i32, i32* @SAMPLE_FLAG_PEND_USER, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @kperf_sample(%struct.kperf_sample* %80, %struct.kperf_context* %13, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %78, %79, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local %struct.TYPE_7__* @current_processor(...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @timer_update(i32*, i64) #1

declare dso_local i64 @timer_grab(i32*) #1

declare dso_local i32 @BUF_DATA(i32, i64, i64, i32, i32) #1

declare dso_local i32 @get_threadtask(%struct.TYPE_6__*) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local %struct.kperf_sample* @kperf_intr_sample_buffer(...) #1

declare dso_local i32 @kperf_sample(%struct.kperf_sample*, %struct.kperf_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
