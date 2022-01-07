; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_info_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_info_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_thread_info = type { i32, i32, i64, i32 }
%struct.kperf_context = type { i32, i32 }

@PERF_TI_SAMPLE = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_thread_info_sample(%struct.kperf_thread_info* %0, %struct.kperf_context* %1) #0 {
  %3 = alloca %struct.kperf_thread_info*, align 8
  %4 = alloca %struct.kperf_context*, align 8
  %5 = alloca i32, align 4
  store %struct.kperf_thread_info* %0, %struct.kperf_thread_info** %3, align 8
  store %struct.kperf_context* %1, %struct.kperf_context** %4, align 8
  %6 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %7 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @PERF_TI_SAMPLE, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @thread_tid(i32 %10)
  %12 = call i32 @BUF_INFO(i32 %9, i64 %11)
  %13 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %14 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kperf_thread_info*, %struct.kperf_thread_info** %3, align 8
  %17 = getelementptr inbounds %struct.kperf_thread_info, %struct.kperf_thread_info* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @thread_tid(i32 %18)
  %20 = load %struct.kperf_thread_info*, %struct.kperf_thread_info** %3, align 8
  %21 = getelementptr inbounds %struct.kperf_thread_info, %struct.kperf_thread_info* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @thread_dispatchqaddr(i32 %22)
  %24 = load %struct.kperf_thread_info*, %struct.kperf_thread_info** %3, align 8
  %25 = getelementptr inbounds %struct.kperf_thread_info, %struct.kperf_thread_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @kperf_thread_info_runmode_legacy(i32 %26)
  %28 = load %struct.kperf_thread_info*, %struct.kperf_thread_info** %3, align 8
  %29 = getelementptr inbounds %struct.kperf_thread_info, %struct.kperf_thread_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @PERF_TI_SAMPLE, align 4
  %31 = load i32, i32* @DBG_FUNC_END, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @BUF_VERB(i32 %32)
  ret void
}

declare dso_local i32 @BUF_INFO(i32, i64) #1

declare dso_local i64 @thread_tid(i32) #1

declare dso_local i32 @thread_dispatchqaddr(i32) #1

declare dso_local i32 @kperf_thread_info_runmode_legacy(i32) #1

declare dso_local i32 @BUF_VERB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
