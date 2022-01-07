; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_sample_kperf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_sample_kperf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_sample = type { i32 }
%struct.kperf_context = type { i32, i32, i32, i32, i32 }

@PERF_KPC_HNDLR = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@TRIGGER_TYPE_PMI = common dso_local global i32 0, align 4
@SAMPLE_FLAG_PEND_USER = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kpc_sample_kperf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kperf_sample, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kperf_context, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @PERF_KPC_HNDLR, align 4
  %9 = load i32, i32* @DBG_FUNC_START, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @BUF_DATA(i32 %10)
  %12 = call i32 (...) @current_thread()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @get_threadtask(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %6, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %6, i32 0, i32 1
  %17 = load i32, i32* @TRIGGER_TYPE_PMI, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %6, i32 0, i32 2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @task_pid(i32 %19)
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %6, i32 0, i32 3
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %6, i32 0, i32 4
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SAMPLE_FLAG_PEND_USER, align 4
  %27 = call i32 @kperf_sample(%struct.kperf_sample* %3, %struct.kperf_context* %6, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @PERF_KPC_HNDLR, align 4
  %29 = load i32, i32* @DBG_FUNC_END, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BUF_INFO(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @BUF_DATA(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @get_threadtask(i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @kperf_sample(%struct.kperf_sample*, %struct.kperf_context*, i32, i32) #1

declare dso_local i32 @BUF_INFO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
