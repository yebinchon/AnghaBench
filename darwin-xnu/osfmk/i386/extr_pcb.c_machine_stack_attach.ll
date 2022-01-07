; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_stack_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_stack_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.x86_kernel_state = type { i64, i64, i64, i64, i64, i64 }

@DBG_MACH_SCHED = common dso_local global i32 0, align 4
@MACH_STACK_ATTACH = common dso_local global i32 0, align 4
@Thread_continue = common dso_local global i64 0, align 8
@thread_continue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_stack_attach(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.x86_kernel_state*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @DBG_MACH_SCHED, align 4
  %7 = load i32, i32* @MACH_STACK_ATTACH, align 4
  %8 = call i32 @MACHDBG_CODE(i32 %6, i32 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = call i64 @thread_tid(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @KERNEL_DEBUG(i32 %8, i64 %10, i32 %13, i32 %16, i32 0, i32 0)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = call i32 @thread_initialize_kernel_state(%struct.TYPE_5__* %23)
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.x86_kernel_state* @STACK_IKS(i32 %25)
  store %struct.x86_kernel_state* %26, %struct.x86_kernel_state** %5, align 8
  %27 = load i64, i64* @Thread_continue, align 8
  %28 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %5, align 8
  %29 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* @thread_continue, align 8
  %31 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %5, align 8
  %32 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call %struct.x86_kernel_state* @STACK_IKS(i32 %33)
  %35 = ptrtoint %struct.x86_kernel_state* %34 to i64
  %36 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %5, align 8
  %37 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  ret void
}

declare dso_local i32 @KERNEL_DEBUG(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i64 @thread_tid(%struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_initialize_kernel_state(%struct.TYPE_5__*) #1

declare dso_local %struct.x86_kernel_state* @STACK_IKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
