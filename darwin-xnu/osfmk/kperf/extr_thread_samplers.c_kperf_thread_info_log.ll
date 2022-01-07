; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_info_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_info_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_thread_info = type { i32, i32, i32, i32 }

@PERF_TI_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_thread_info_log(%struct.kperf_thread_info* %0) #0 {
  %2 = alloca %struct.kperf_thread_info*, align 8
  store %struct.kperf_thread_info* %0, %struct.kperf_thread_info** %2, align 8
  %3 = load i32, i32* @PERF_TI_DATA, align 4
  %4 = load %struct.kperf_thread_info*, %struct.kperf_thread_info** %2, align 8
  %5 = getelementptr inbounds %struct.kperf_thread_info, %struct.kperf_thread_info* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.kperf_thread_info*, %struct.kperf_thread_info** %2, align 8
  %8 = getelementptr inbounds %struct.kperf_thread_info, %struct.kperf_thread_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.kperf_thread_info*, %struct.kperf_thread_info** %2, align 8
  %11 = getelementptr inbounds %struct.kperf_thread_info, %struct.kperf_thread_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.kperf_thread_info*, %struct.kperf_thread_info** %2, align 8
  %14 = getelementptr inbounds %struct.kperf_thread_info, %struct.kperf_thread_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BUF_DATA(i32 %3, i32 %6, i32 %9, i32 %12, i32 %15)
  ret void
}

declare dso_local i32 @BUF_DATA(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
