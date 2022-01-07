; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_deallocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@VM_MAP_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@VM_MAP_REMOVE_NO_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_deallocate(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VM_MAP_NULL, align 8
  %6 = icmp eq %struct.TYPE_6__* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = call i32 @lck_mtx_lock(i32* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %13, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ugt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = call i32 @vm_map_res_deallocate(%struct.TYPE_6__* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = call i32 @lck_mtx_unlock(i32* %22)
  br label %37

24:                                               ; preds = %8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = call i32 @lck_mtx_unlock(i32* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = load i32, i32* @VM_MAP_REMOVE_NO_FLAGS, align 4
  %36 = call i32 @vm_map_destroy(%struct.TYPE_6__* %34, i32 %35)
  br label %37

37:                                               ; preds = %24, %18, %7
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @vm_map_res_deallocate(%struct.TYPE_6__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_destroy(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
