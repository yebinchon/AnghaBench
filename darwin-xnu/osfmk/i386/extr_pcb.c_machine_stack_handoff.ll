; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_stack_handoff.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_stack_handoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@OnProc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_stack_handoff(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_18__* %6)
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = call i32 @assert(%struct.TYPE_18__* %8)
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = call i32 @kpc_off_cpu(%struct.TYPE_18__* %10)
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_18__*
  %25 = call i32 @assert(%struct.TYPE_18__* %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %20, %2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = call i32 @fpu_switch_context(%struct.TYPE_18__* %40, %struct.TYPE_18__* %41)
  %43 = load i32, i32* @OnProc, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %44
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @OnProc, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = call i32 (...) @cpu_number()
  %59 = call i32 @pmap_switch_context(%struct.TYPE_18__* %56, %struct.TYPE_18__* %57, i32 %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = call i32 @act_machine_switch_pcb(%struct.TYPE_18__* %60, %struct.TYPE_18__* %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = call i32 @machine_set_current_thread(%struct.TYPE_18__* %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = call i32 @thread_initialize_kernel_state(%struct.TYPE_18__* %65)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_18__*) #1

declare dso_local i32 @kpc_off_cpu(%struct.TYPE_18__*) #1

declare dso_local i32 @fpu_switch_context(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @pmap_switch_context(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @act_machine_switch_pcb(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @machine_set_current_thread(%struct.TYPE_18__*) #1

declare dso_local i32 @thread_initialize_kernel_state(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
