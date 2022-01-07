; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [27 x i8] c"shared_region: -> get(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"shared_region: get(%p) <- %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @vm_shared_region_get(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = call i64 @VM_KERNEL_ADDRPERM(%struct.TYPE_9__* %4)
  %6 = inttoptr i64 %5 to i8*
  %7 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = call i32 @task_lock(%struct.TYPE_9__* %8)
  %10 = call i32 (...) @vm_shared_region_lock()
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @vm_shared_region_reference_locked(%struct.TYPE_9__* %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = call i32 (...) @vm_shared_region_unlock()
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = call i32 @task_unlock(%struct.TYPE_9__* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = call i64 @VM_KERNEL_ADDRPERM(%struct.TYPE_9__* %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i64 @VM_KERNEL_ADDRPERM(%struct.TYPE_9__* %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %36
}

declare dso_local i32 @SHARED_REGION_TRACE_DEBUG(i8*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.TYPE_9__*) #1

declare dso_local i32 @task_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_shared_region_lock(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_shared_region_reference_locked(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_shared_region_unlock(...) #1

declare dso_local i32 @task_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
