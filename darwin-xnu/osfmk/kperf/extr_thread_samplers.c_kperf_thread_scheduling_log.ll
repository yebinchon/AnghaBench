; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_scheduling_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_scheduling_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_thread_scheduling = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32 }

@PERF_TI_SCHEDDATA_2 = common dso_local global i32 0, align 4
@PERF_TI_SCHEDDATA_3 = common dso_local global i32 0, align 4
@PERF_TI_SCHEDDATA1_32 = common dso_local global i32 0, align 4
@PERF_TI_SCHEDDATA2_32_2 = common dso_local global i32 0, align 4
@PERF_TI_SCHEDDATA3_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_thread_scheduling_log(%struct.kperf_thread_scheduling* %0) #0 {
  %2 = alloca %struct.kperf_thread_scheduling*, align 8
  store %struct.kperf_thread_scheduling* %0, %struct.kperf_thread_scheduling** %2, align 8
  %3 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %4 = icmp ne %struct.kperf_thread_scheduling* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* @PERF_TI_SCHEDDATA_2, align 4
  %8 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %9 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %8, i32 0, i32 12
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %12 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %15 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 48
  %19 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %20 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 32
  %23 = or i32 %18, %22
  %24 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %25 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = shl i32 %27, 24
  %29 = or i32 %23, %28
  %30 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %31 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 6
  %34 = or i32 %29, %33
  %35 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %36 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 3
  %39 = or i32 %34, %38
  %40 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %41 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %39, %42
  %44 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %45 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 %47, 61
  %49 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %50 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = shl i32 %52, 58
  %54 = or i32 %48, %53
  %55 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %56 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = shl i32 %58, 55
  %60 = or i32 %54, %59
  %61 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %62 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 %64, 52
  %66 = or i32 %60, %65
  %67 = call i32 (i32, i32, ...) @BUF_DATA(i32 %7, i32 %10, i32 %13, i32 %43, i32 %66)
  %68 = load i32, i32* @PERF_TI_SCHEDDATA_3, align 4
  %69 = load %struct.kperf_thread_scheduling*, %struct.kperf_thread_scheduling** %2, align 8
  %70 = getelementptr inbounds %struct.kperf_thread_scheduling, %struct.kperf_thread_scheduling* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i32, ...) @BUF_DATA(i32 %68, i32 %71)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BUF_DATA(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
