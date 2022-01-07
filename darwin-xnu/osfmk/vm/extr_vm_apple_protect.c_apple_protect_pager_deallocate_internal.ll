; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_apple_protect.c_apple_protect_pager_deallocate_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_apple_protect.c_apple_protect_pager_deallocate_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@apple_protect_pager_lock = common dso_local global i32 0, align 4
@apple_protect_pager_count = common dso_local global i32 0, align 4
@apple_protect_pager_count_mapped = common dso_local global i32 0, align 4
@apple_protect_pager_cache_limit = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i64 0, align 8
@APPLE_PROTECT_PAGER_NULL = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apple_protect_pager_deallocate_internal(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @lck_mtx_lock(i32* @apple_protect_pager_lock)
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* @apple_protect_pager_count, align 4
  %13 = load i32, i32* @apple_protect_pager_count_mapped, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @apple_protect_pager_cache_limit, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* %5, align 8
  br label %22

20:                                               ; preds = %11
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @apple_protect_pager_dequeue(%struct.TYPE_9__* %32)
  %34 = call i32 @lck_mtx_unlock(i32* @apple_protect_pager_lock)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i32 @apple_protect_pager_terminate_internal(%struct.TYPE_9__* %35)
  br label %67

37:                                               ; preds = %22
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = call i32 @lck_mtx_unlock(i32* @apple_protect_pager_lock)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MEMORY_OBJECT_CONTROL_NULL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @memory_object_control_deallocate(i64 %54)
  %56 = load i64, i64* @MEMORY_OBJECT_CONTROL_NULL, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %50, %42
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = call i32 @kfree(%struct.TYPE_9__* %61, i32 16)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @APPLE_PROTECT_PAGER_NULL, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %3, align 8
  br label %66

64:                                               ; preds = %37
  %65 = call i32 @lck_mtx_unlock(i32* @apple_protect_pager_lock)
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66, %31
  %68 = load i64, i64* %5, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (...) @apple_protect_pager_trim()
  br label %72

72:                                               ; preds = %70, %67
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @apple_protect_pager_dequeue(%struct.TYPE_9__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @apple_protect_pager_terminate_internal(%struct.TYPE_9__*) #1

declare dso_local i32 @memory_object_control_deallocate(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @apple_protect_pager_trim(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
