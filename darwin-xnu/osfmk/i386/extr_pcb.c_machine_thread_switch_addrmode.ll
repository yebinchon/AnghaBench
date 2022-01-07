; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_thread_switch_addrmode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_thread_switch_addrmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_thread_switch_addrmode(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = call i32 (...) @disable_preemption()
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @machine_thread_create(%struct.TYPE_7__* %5, i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @task_has_64Bit_addr(i32 %13)
  %15 = call i32 @fpu_switch_addrmode(%struct.TYPE_7__* %10, i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = call %struct.TYPE_7__* (...) @current_thread()
  %18 = icmp eq %struct.TYPE_7__* %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @ml_set_interrupts_enabled(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = call i32 @act_machine_switch_pcb(i32* null, %struct.TYPE_7__* %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ml_set_interrupts_enabled(i32 %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = call i32 (...) @enable_preemption()
  ret void
}

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i32 @machine_thread_create(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fpu_switch_addrmode(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @task_has_64Bit_addr(i32) #1

declare dso_local %struct.TYPE_7__* @current_thread(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @act_machine_switch_pcb(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
