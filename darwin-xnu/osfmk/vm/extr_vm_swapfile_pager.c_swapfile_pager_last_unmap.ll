; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_swapfile_pager.c_swapfile_pager_last_unmap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_swapfile_pager.c_swapfile_pager_last_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@PAGER_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"swapfile_pager_last_unmap: %p\0A\00", align 1
@swapfile_pager_lock = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swapfile_pager_last_unmap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PAGER_ALL, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @PAGER_DEBUG(i32 %4, i8* %7)
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.TYPE_4__* @swapfile_pager_lookup(i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  %11 = call i32 @lck_mtx_lock(i32* @swapfile_pager_lock)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i64, i64* @FALSE, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @swapfile_pager_deallocate_internal(%struct.TYPE_4__* %20, i32 %21)
  br label %25

23:                                               ; preds = %1
  %24 = call i32 @lck_mtx_unlock(i32* @swapfile_pager_lock)
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %26
}

declare dso_local i32 @PAGER_DEBUG(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @swapfile_pager_lookup(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @swapfile_pager_deallocate_internal(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
