; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_i386_deactivate_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_i386_deactivate_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@TRACE_MP_CPU_DEACTIVATE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@x86_topo_lock = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@master_cpu = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@timer_queue_expire_local = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EndOfAllTime = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i386_deactivate_cpu() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = call %struct.TYPE_7__* (...) @current_cpu_datap()
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %1, align 8
  %3 = call i32 (...) @ml_get_interrupts_enabled()
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* @TRACE_MP_CPU_DEACTIVATE, align 4
  %9 = load i32, i32* @DBG_FUNC_START, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %10, i32 0, i32 0, i32 0, i32 0, i32 0)
  %12 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  %13 = load i32, i32* @FALSE, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @timer_queue_shutdown(i32* %19)
  %21 = load i32, i32* @master_cpu, align 4
  %22 = call i32 @cpu_to_cpumask(i32 %21)
  %23 = load i32, i32* @ASYNC, align 4
  %24 = load i32, i32* @timer_queue_expire_local, align 4
  %25 = call i32 @mp_cpus_call(i32 %22, i32 %23, i32 %24, i32* null)
  %26 = call i32 (...) @mp_disable_preemption()
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @ml_set_interrupts_enabled(i32 %27)
  br label %29

29:                                               ; preds = %42, %0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = call %struct.TYPE_8__* (...) @x86_lcpu()
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EndOfAllTime, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi i1 [ false, %29 ], [ %39, %34 ]
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = call i32 (...) @cpu_pause()
  br label %29

44:                                               ; preds = %40
  %45 = call i32 @setPop(i32 0)
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @ml_set_interrupts_enabled(i32 %46)
  %48 = call i32 (...) @mp_enable_preemption()
  %49 = load i32, i32* @TRACE_MP_CPU_DEACTIVATE, align 4
  %50 = load i32, i32* @DBG_FUNC_END, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %51, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local %struct.TYPE_7__* @current_cpu_datap(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mp_safe_spin_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @timer_queue_shutdown(i32*) #1

declare dso_local i32 @mp_cpus_call(i32, i32, i32, i32*) #1

declare dso_local i32 @cpu_to_cpumask(i32) #1

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local %struct.TYPE_8__* @x86_lcpu(...) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i32 @setPop(i32) #1

declare dso_local i32 @mp_enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
