; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_intel_startCPU_fast.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_intel_startCPU_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@TRACE_MP_CPU_FAST_START = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @intel_startCPU_fast(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @pmCPUExitHalt(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @KERN_SUCCESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %2, align 8
  br label %40

12:                                               ; preds = %1
  %13 = load i32, i32* @TRACE_MP_CPU_FAST_START, align 4
  %14 = load i32, i32* @DBG_FUNC_START, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %15, i32 %16, i64 0, i32 0, i32 0, i32 0)
  %18 = call i32 (...) @mp_disable_preemption()
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mp_wait_for_cpu_up(i32 %19, i32 30000, i32 1)
  %21 = call i32 (...) @mp_enable_preemption()
  %22 = load i32, i32* @TRACE_MP_CPU_FAST_START, align 4
  %23 = load i32, i32* @DBG_FUNC_END, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.TYPE_2__* @cpu_datap(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %24, i32 %25, i64 %29, i32 0, i32 0, i32 0)
  %31 = load i32, i32* %3, align 4
  %32 = call %struct.TYPE_2__* @cpu_datap(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %12
  %37 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %37, i64* %2, align 8
  br label %40

38:                                               ; preds = %12
  %39 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %38, %36, %10
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i64 @pmCPUExitHalt(i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i32 @mp_wait_for_cpu_up(i32, i32, i32) #1

declare dso_local i32 @mp_enable_preemption(...) #1

declare dso_local %struct.TYPE_2__* @cpu_datap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
