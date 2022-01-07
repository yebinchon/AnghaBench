; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_switch_context.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_switch_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@OnProc = common dso_local global i32 0, align 4
@kernel_stack_depth_max = common dso_local global i64 0, align 8
@DBG_MACH_SCHED = common dso_local global i32 0, align 4
@MACH_STACK_DEPTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @machine_switch_context(%struct.TYPE_21__* %0, i32 %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %8 = call %struct.TYPE_19__* (...) @current_cpu_datap()
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = call i32 @fpu_switch_context(%struct.TYPE_21__* %17, %struct.TYPE_21__* %18)
  %20 = load i32, i32* @OnProc, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %21
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @OnProc, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 8
  %33 = call i64 (...) @current_stack_depth()
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @kernel_stack_depth_max, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %3
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* @kernel_stack_depth_max, align 8
  %39 = load i32, i32* @DBG_MACH_SCHED, align 4
  %40 = load i32, i32* @MACH_STACK_DEPTH, align 4
  %41 = call i32 @MACHDBG_CODE(i32 %39, i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %41, i64 %42, i32 0, i32 0, i32 0, i32 0)
  br label %44

44:                                               ; preds = %37, %3
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = call i32 (...) @cpu_number()
  %48 = call i32 @pmap_switch_context(%struct.TYPE_21__* %45, %struct.TYPE_21__* %46, i32 %47)
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = call i32 @act_machine_switch_pcb(%struct.TYPE_21__* %49, %struct.TYPE_21__* %50)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = call %struct.TYPE_21__* @Switch_context(%struct.TYPE_21__* %52, i32 %53, %struct.TYPE_21__* %54)
  ret %struct.TYPE_21__* %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_19__* @current_cpu_datap(...) #1

declare dso_local i32 @fpu_switch_context(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @current_stack_depth(...) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @pmap_switch_context(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @act_machine_switch_pcb(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @Switch_context(%struct.TYPE_21__*, i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
