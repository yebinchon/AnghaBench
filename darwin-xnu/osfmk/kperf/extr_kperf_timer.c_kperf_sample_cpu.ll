; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_sample_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_sample_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kperf_timer = type { i32, i32 }
%struct.kperf_sample = type { i32 }
%struct.kperf_context = type { i32, i32, i32, i32, i32 }

@PERF_TM_HNDLR = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@kperf_timerv = common dso_local global i32 0, align 4
@TRIGGER_TYPE_TIMER = common dso_local global i32 0, align 4
@pet_timer_id = common dso_local global i64 0, align 8
@machine_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@kperf_tid_on_cpus = common dso_local global i32* null, align 8
@KPERF_SAMPLING_OFF = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@SAMPLE_OFF = common dso_local global i32 0, align 4
@KPERF_SAMPLING_SHUTDOWN = common dso_local global i32 0, align 4
@SAMPLE_SHUTDOWN = common dso_local global i32 0, align 4
@SAMPLE_FLAG_PEND_USER = common dso_local global i32 0, align 4
@SAMPLE_FLAG_SYSTEM = common dso_local global i32 0, align 4
@SAMPLE_FLAG_ONLY_SYSTEM = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kperf_timer*, i32, i32)* @kperf_sample_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kperf_sample_cpu(%struct.kperf_timer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kperf_timer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kperf_sample*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kperf_context, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kperf_timer* %0, %struct.kperf_timer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.kperf_timer*, %struct.kperf_timer** %4, align 8
  %15 = icmp ne %struct.kperf_timer* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @PERF_TM_HNDLR, align 4
  %19 = load i32, i32* @DBG_FUNC_START, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @BUF_DATA(i32 %20, i32 0)
  %22 = call i32 (...) @cpu_number()
  store i32 %22, i32* %7, align 4
  %23 = call %struct.kperf_sample* (...) @kperf_intr_sample_buffer()
  store %struct.kperf_sample* %23, %struct.kperf_sample** %8, align 8
  %24 = call i32 (...) @current_thread()
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @get_threadtask(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 0
  %28 = load %struct.kperf_timer*, %struct.kperf_timer** %4, align 8
  %29 = load i32, i32* @kperf_timerv, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %28, i64 %31
  %33 = ptrtoint %struct.kperf_timer* %32 to i32
  store i32 %33, i32* %27, align 4
  %34 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 1
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 2
  %37 = load i32, i32* @TRIGGER_TYPE_TIMER, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 3
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @task_pid(i32 %39)
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 4
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* @pet_timer_id, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %3
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @machine_info, i32 0, i32 0), align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @thread_tid(i32 %54)
  %56 = load i32*, i32** @kperf_tid_on_cpus, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %48, %3
  %61 = call i32 (...) @kperf_sampling_status()
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @KPERF_SAMPLING_OFF, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @PERF_TM_HNDLR, align 4
  %67 = load i32, i32* @DBG_FUNC_END, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @SAMPLE_OFF, align 4
  %70 = call i32 @BUF_INFO(i32 %68, i32 %69)
  br label %118

71:                                               ; preds = %60
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @KPERF_SAMPLING_SHUTDOWN, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @PERF_TM_HNDLR, align 4
  %77 = load i32, i32* @DBG_FUNC_END, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SAMPLE_SHUTDOWN, align 4
  %80 = call i32 @BUF_INFO(i32 %78, i32 %79)
  br label %118

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %84 = load %struct.kperf_timer*, %struct.kperf_timer** %4, align 8
  %85 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SAMPLE_FLAG_PEND_USER, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @SAMPLE_FLAG_SYSTEM, align 4
  br label %93

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = or i32 %87, %94
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @SAMPLE_FLAG_ONLY_SYSTEM, align 4
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = or i32 %95, %102
  %104 = call i32 @kperf_sample(%struct.kperf_sample* %83, %struct.kperf_context* %11, i32 %86, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* @PERF_TM_HNDLR, align 4
  %106 = load i32, i32* @DBG_FUNC_END, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @BUF_INFO(i32 %107, i32 %108)
  %110 = load %struct.kperf_timer*, %struct.kperf_timer** %4, align 8
  %111 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %110, i32 0, i32 0
  %112 = call i32 @UINT64_C(i32 1)
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* @memory_order_relaxed, align 4
  %117 = call i32 @atomic_fetch_and_explicit(i32* %111, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %101, %75, %65
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BUF_DATA(i32, i32) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local %struct.kperf_sample* @kperf_intr_sample_buffer(...) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @get_threadtask(i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @kperf_sampling_status(...) #1

declare dso_local i32 @BUF_INFO(i32, i32) #1

declare dso_local i32 @kperf_sample(%struct.kperf_sample*, %struct.kperf_context*, i32, i32) #1

declare dso_local i32 @atomic_fetch_and_explicit(i32*, i32, i32) #1

declare dso_local i32 @UINT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
