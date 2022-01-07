; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_snapshot_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_snapshot_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_thread_snapshot = type { i32, i32, i32, i64 }

@PERF_TI_SNAPDATA = common dso_local global i32 0, align 4
@PERF_TI_SNAPDATA_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_thread_snapshot_log(%struct.kperf_thread_snapshot* %0) #0 {
  %2 = alloca %struct.kperf_thread_snapshot*, align 8
  store %struct.kperf_thread_snapshot* %0, %struct.kperf_thread_snapshot** %2, align 8
  %3 = load %struct.kperf_thread_snapshot*, %struct.kperf_thread_snapshot** %2, align 8
  %4 = icmp ne %struct.kperf_thread_snapshot* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* @PERF_TI_SNAPDATA, align 4
  %8 = load %struct.kperf_thread_snapshot*, %struct.kperf_thread_snapshot** %2, align 8
  %9 = getelementptr inbounds %struct.kperf_thread_snapshot, %struct.kperf_thread_snapshot* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.kperf_thread_snapshot*, %struct.kperf_thread_snapshot** %2, align 8
  %12 = getelementptr inbounds %struct.kperf_thread_snapshot, %struct.kperf_thread_snapshot* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 8
  %16 = or i32 %10, %15
  %17 = load %struct.kperf_thread_snapshot*, %struct.kperf_thread_snapshot** %2, align 8
  %18 = getelementptr inbounds %struct.kperf_thread_snapshot, %struct.kperf_thread_snapshot* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 24
  %21 = or i32 %16, %20
  %22 = load %struct.kperf_thread_snapshot*, %struct.kperf_thread_snapshot** %2, align 8
  %23 = getelementptr inbounds %struct.kperf_thread_snapshot, %struct.kperf_thread_snapshot* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i32, i32, ...) @BUF_DATA(i32 %7, i32 %21, i32 %24)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BUF_DATA(i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
