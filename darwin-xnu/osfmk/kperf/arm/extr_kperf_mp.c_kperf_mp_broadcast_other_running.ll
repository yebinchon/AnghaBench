; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/arm/extr_kperf_mp.c_kperf_mp_broadcast_other_running.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/arm/extr_kperf_mp.c_kperf_mp_broadcast_other_running.c"
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
@SIGPkptimer = common dso_local global i32 0, align 4
@kperf_pending_ipis = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kperf_mp_broadcast_other_running(%struct.kperf_timer* %0) #0 {
  %2 = alloca %struct.kperf_timer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct.kperf_timer* %0, %struct.kperf_timer** %2, align 8
  %10 = call i32 (...) @cpu_number()
  store i32 %10, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @machine_info, i32 0, i32 0), align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %59, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %12
  %17 = call i32 @UINT64_C(i32 1)
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_5__* @cpu_to_processor(i32 %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PROCESSOR_NULL, align 8
  %24 = icmp eq %struct.TYPE_5__* %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %16
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PROCESSOR_RUNNING, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @THREAD_NULL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25, %16
  br label %59

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %59

43:                                               ; preds = %38
  %44 = load %struct.kperf_timer*, %struct.kperf_timer** %2, align 8
  %45 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @memory_order_relaxed, align 4
  %48 = call i32 @atomic_fetch_or_explicit(i32* %45, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %59

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @cpu_datap(i32 %55)
  %57 = load i32, i32* @SIGPkptimer, align 4
  %58 = call i32 @cpu_signal(i32 %56, i32 %57, i32* null, i32* null)
  br label %59

59:                                               ; preds = %54, %53, %42, %37
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %12

62:                                               ; preds = %12
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local %struct.TYPE_5__* @cpu_to_processor(i32) #1

declare dso_local i32 @atomic_fetch_or_explicit(i32*, i32, i32) #1

declare dso_local i32 @cpu_signal(i32, i32, i32*, i32*) #1

declare dso_local i32 @cpu_datap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
