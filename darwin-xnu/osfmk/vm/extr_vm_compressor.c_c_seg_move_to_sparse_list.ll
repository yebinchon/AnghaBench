; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_move_to_sparse_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_move_to_sparse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@c_list_lock = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@C_ON_SWAPPEDOUTSPARSE_Q = common dso_local global i32 0, align 4
@c_seg_moved_to_sparse_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_seg_move_to_sparse_list(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load i64, i64* @FALSE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32*, i32** @c_list_lock, align 8
  %6 = call i32 @lck_mtx_try_lock_spin_always(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = call i32 @C_SEG_BUSY(%struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @lck_mtx_unlock_always(i32* %12)
  %14 = load i32*, i32** @c_list_lock, align 8
  %15 = call i32 @lck_mtx_lock_spin_always(i32* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @lck_mtx_lock_spin_always(i32* %17)
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %8, %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = load i32, i32* @C_ON_SWAPPEDOUTSPARSE_Q, align 4
  %23 = load i64, i64* @FALSE, align 8
  %24 = call i32 @c_seg_switch_state(%struct.TYPE_6__* %21, i32 %22, i64 %23)
  %25 = load i32, i32* @c_seg_moved_to_sparse_list, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @c_seg_moved_to_sparse_list, align 4
  %27 = load i32*, i32** @c_list_lock, align 8
  %28 = call i32 @lck_mtx_unlock_always(i32* %27)
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @TRUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = call i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_6__* %33)
  br label %35

35:                                               ; preds = %32, %20
  ret void
}

declare dso_local i32 @lck_mtx_try_lock_spin_always(i32*) #1

declare dso_local i32 @C_SEG_BUSY(%struct.TYPE_6__*) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i32 @c_seg_switch_state(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
