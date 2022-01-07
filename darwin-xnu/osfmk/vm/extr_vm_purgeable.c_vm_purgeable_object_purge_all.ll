; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_object_purge_all.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_object_purge_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i64, i64 }

@vm_purgeable_queue_lock = common dso_local global i32 0, align 4
@PURGEABLE_Q_TYPE_OBSOLETE = common dso_local global i32 0, align 4
@PURGEABLE_Q_TYPE_MAX = common dso_local global i32 0, align 4
@purgeable_queues = common dso_local global %struct.TYPE_11__* null, align 8
@NUM_VOLATILE_GROUPS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@VM_PURGABLE_EMPTY = common dso_local global i64 0, align 8
@DBG_MACH_VM = common dso_local global i32 0, align 4
@OBJECT_PURGE_ALL = common dso_local global i32 0, align 4
@available_for_purge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_purgeable_object_purge_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %59, %42, %0
  %8 = call i32 @lck_mtx_lock(i32* @vm_purgeable_queue_lock)
  %9 = load i32, i32* @PURGEABLE_Q_TYPE_OBSOLETE, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %84, %7
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @PURGEABLE_Q_TYPE_MAX, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %10
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @purgeable_queues, align 8
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i64 %17
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %80, %14
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @NUM_VOLATILE_GROUPS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %83

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @queue_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %73

34:                                               ; preds = %24
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call %struct.TYPE_10__* @vm_purgeable_object_find_and_lock(%struct.TYPE_11__* %35, i32 %36, i32 %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %3, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VM_OBJECT_NULL, align 8
  %41 = icmp eq %struct.TYPE_10__* %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = call i32 @lck_mtx_unlock(i32* @vm_purgeable_queue_lock)
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %5, align 8
  %46 = trunc i64 %44 to i32
  %47 = call i32 @mutex_pause(i32 %46)
  br label %7

48:                                               ; preds = %34
  %49 = call i32 @lck_mtx_unlock(i32* @vm_purgeable_queue_lock)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = call i32 (...) @vm_page_lock_queues()
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = call i32 @vm_purgeable_token_remove_first(%struct.TYPE_11__* %56)
  %58 = call i32 (...) @vm_page_unlock_queues()
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = call i32 @vm_object_purge(%struct.TYPE_10__* %60, i32 0)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VM_PURGABLE_EMPTY, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = call i32 @vm_object_unlock(%struct.TYPE_10__* %69)
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %7

73:                                               ; preds = %24
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %2, align 4
  br label %19

83:                                               ; preds = %19
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %1, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %1, align 4
  br label %10

87:                                               ; preds = %10
  %88 = load i32, i32* @DBG_MACH_VM, align 4
  %89 = load i32, i32* @OBJECT_PURGE_ALL, align 4
  %90 = call i32 @MACHDBG_CODE(i32 %88, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @available_for_purge, align 4
  %93 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %90, i32 %91, i32 0, i32 %92, i32 0, i32 0)
  %94 = call i32 @lck_mtx_unlock(i32* @vm_purgeable_queue_lock)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @queue_empty(i32*) #1

declare dso_local %struct.TYPE_10__* @vm_purgeable_object_find_and_lock(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @mutex_pause(i32) #1

declare dso_local i32 @vm_page_lock_queues(...) #1

declare dso_local i32 @vm_purgeable_token_remove_first(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @vm_object_purge(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
