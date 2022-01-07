; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_quantum_timer_cancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_quantum_timer_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DECR_TIMER_CANCEL = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@callout__cancel = common dso_local global i32 0, align 4
@timer_call_func_t = common dso_local global i32 0, align 4
@timer_call_param_t = common dso_local global i32 0, align 4
@uint32_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_call_quantum_timer_cancel(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = call i64 (...) @ml_get_interrupts_enabled()
  %4 = load i64, i64* @FALSE, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* @KDEBUG_TRACE, align 4
  %9 = load i32, i32* @DECR_TIMER_CANCEL, align 4
  %10 = load i32, i32* @DBG_FUNC_START, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = call %struct.TYPE_7__* @TCE(%struct.TYPE_6__* %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @TIMER_KDEBUG_TRACE(i32 %8, i32 %11, i32 %13, i64 %17, i64 0, i64 %20, i32 0)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = call %struct.TYPE_7__* @TCE(%struct.TYPE_6__* %22)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = call i32 @quantum_timer_set_deadline(i32 0)
  %26 = load i32, i32* @KDEBUG_TRACE, align 4
  %27 = load i32, i32* @DECR_TIMER_CANCEL, align 4
  %28 = load i32, i32* @DBG_FUNC_END, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_6__* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = call %struct.TYPE_7__* @TCE(%struct.TYPE_6__* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i64 (...) @mach_absolute_time()
  %37 = sub nsw i64 %35, %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = call %struct.TYPE_7__* @TCE(%struct.TYPE_6__* %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = call %struct.TYPE_7__* @TCE(%struct.TYPE_6__* %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %41, %45
  %47 = call i32 @TIMER_KDEBUG_TRACE(i32 %26, i32 %29, i32 %31, i64 0, i64 %37, i64 %46, i32 0)
  ret i32 1
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @TIMER_KDEBUG_TRACE(i32, i32, i32, i64, i64, i64, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_7__* @TCE(%struct.TYPE_6__*) #1

declare dso_local i32 @quantum_timer_set_deadline(i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
