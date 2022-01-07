; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_cpu_thread_halt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_cpu_thread_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@x86_topo_lock = common dso_local global i32 0, align 4
@machine_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@PM_HALT_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @cpu_thread_halt() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = call %struct.TYPE_8__* (...) @current_cpu_datap()
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %2, align 8
  %4 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @machine_info, i32 0, i32 0), align 4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @machine_info, i32 0, i32 0), align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %1, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @machine_info, i32 0, i32 1), align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @machine_info, i32 0, i32 1), align 4
  br label %22

22:                                               ; preds = %19, %0
  %23 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @ml_set_interrupts_enabled(i32 %24)
  br label %26

26:                                               ; preds = %22, %26
  %27 = load i32, i32* @PM_HALT_NORMAL, align 4
  %28 = call i32 @pmCPUHalt(i32 %27)
  br label %26
}

declare dso_local %struct.TYPE_8__* @current_cpu_datap(...) #1

declare dso_local i32 @mp_safe_spin_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @pmCPUHalt(i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
