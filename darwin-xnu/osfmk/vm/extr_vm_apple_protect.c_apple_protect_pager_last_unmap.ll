; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_apple_protect.c_apple_protect_pager_last_unmap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_apple_protect.c_apple_protect_pager_last_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@PAGER_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"apple_protect_pager_last_unmap: %p\0A\00", align 1
@apple_protect_pager_lock = common dso_local global i32 0, align 4
@apple_protect_pager_count_mapped = common dso_local global i32 0, align 4
@apple_protect_pager_count = common dso_local global i32 0, align 4
@apple_protect_pager_count_unmapped_max = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apple_protect_pager_last_unmap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PAGER_ALL, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @PAGER_DEBUG(i32 %5, i8* %8)
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.TYPE_4__* @apple_protect_pager_lookup(i32 %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  %12 = call i32 @lck_mtx_lock(i32* @apple_protect_pager_lock)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load i32, i32* @apple_protect_pager_count_mapped, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @apple_protect_pager_count_mapped, align 4
  %20 = load i32, i32* @apple_protect_pager_count, align 4
  %21 = load i32, i32* @apple_protect_pager_count_mapped, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @apple_protect_pager_count_unmapped_max, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* @apple_protect_pager_count_unmapped_max, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i64, i64* @FALSE, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @apple_protect_pager_deallocate_internal(%struct.TYPE_4__* %32, i32 %33)
  br label %37

35:                                               ; preds = %1
  %36 = call i32 @lck_mtx_unlock(i32* @apple_protect_pager_lock)
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %38
}

declare dso_local i32 @PAGER_DEBUG(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @apple_protect_pager_lookup(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @apple_protect_pager_deallocate_internal(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
