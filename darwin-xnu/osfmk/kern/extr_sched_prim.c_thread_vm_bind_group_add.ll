; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_thread_vm_bind_group_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_thread_vm_bind_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TH_OPT_SCHED_VM_GROUP = common dso_local global i32 0, align 4
@sched_vm_group_list_lock = common dso_local global i32 0, align 4
@sched_vm_group_thread_count = common dso_local global i64 0, align 8
@MAX_VM_BIND_GROUP_COUNT = common dso_local global i64 0, align 8
@sched_vm_group_thread_list = common dso_local global %struct.TYPE_5__** null, align 8
@master_processor = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_vm_bind_group_add() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call %struct.TYPE_5__* (...) @current_thread()
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %4 = call i32 @thread_reference_internal(%struct.TYPE_5__* %3)
  %5 = load i32, i32* @TH_OPT_SCHED_VM_GROUP, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = call i32 @simple_lock(i32* @sched_vm_group_list_lock)
  %11 = load i64, i64* @sched_vm_group_thread_count, align 8
  %12 = load i64, i64* @MAX_VM_BIND_GROUP_COUNT, align 8
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sched_vm_group_thread_list, align 8
  %18 = load i64, i64* @sched_vm_group_thread_count, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @sched_vm_group_thread_count, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %17, i64 %18
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %20, align 8
  %21 = call i32 @simple_unlock(i32* @sched_vm_group_list_lock)
  %22 = load i32, i32* @master_processor, align 4
  %23 = call i32 @thread_bind(i32 %22)
  %24 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %25 = call i32 @thread_block(i32 %24)
  ret void
}

declare dso_local %struct.TYPE_5__* @current_thread(...) #1

declare dso_local i32 @thread_reference_internal(%struct.TYPE_5__*) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @thread_bind(i32) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
