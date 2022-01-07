; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/x86_64/extr_kperf_mp.c_kperf_mp_broadcast_other_running.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/x86_64/extr_kperf_mp.c_kperf_mp_broadcast_other_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.kperf_timer = type { i32 }

@machine_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@PROCESSOR_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@PROCESSOR_RUNNING = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@memory_order_relaxed = common dso_local global i32 0, align 4
@NOSYNC = common dso_local global i32 0, align 4
@kperf_ipi_handler = common dso_local global i32 0, align 4
@PERF_TM_PENDING = common dso_local global i32 0, align 4
@PERF_TM_SKIPPED = common dso_local global i32 0, align 4
@kperf_pending_ipis = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kperf_mp_broadcast_other_running(%struct.kperf_timer* %0) #0 {
  %2 = alloca %struct.kperf_timer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store %struct.kperf_timer* %0, %struct.kperf_timer** %2, align 8
  %11 = call i32 (...) @cpu_number()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @machine_info, i32 0, i32 0), align 4
  store i32 %12, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %60, %1
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %13
  %18 = call i32 @UINT64_C(i32 1)
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_5__* @cpu_to_processor(i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %9, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PROCESSOR_NULL, align 8
  %25 = icmp eq %struct.TYPE_5__* %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PROCESSOR_RUNNING, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @THREAD_NULL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26, %17
  br label %60

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %60

44:                                               ; preds = %39
  %45 = load %struct.kperf_timer*, %struct.kperf_timer** %2, align 8
  %46 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %45, i32 0, i32 0
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @memory_order_relaxed, align 4
  %49 = call i32 @atomic_fetch_or_explicit(i32* %46, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %60

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @cpu_to_cpumask(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %54, %43, %38
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %13

63:                                               ; preds = %13
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @NOSYNC, align 4
  %69 = load i32, i32* @kperf_ipi_handler, align 4
  %70 = load %struct.kperf_timer*, %struct.kperf_timer** %2, align 8
  %71 = call i32 @mp_cpus_call(i32 %67, i32 %68, i32 %69, %struct.kperf_timer* %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local %struct.TYPE_5__* @cpu_to_processor(i32) #1

declare dso_local i32 @atomic_fetch_or_explicit(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_cpumask(i32) #1

declare dso_local i32 @mp_cpus_call(i32, i32, i32, %struct.kperf_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
