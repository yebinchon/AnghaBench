; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_do_delayed_compactions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_do_delayed_compactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@c_list_lock = common dso_local global i32* null, align 8
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@c_minor_list_head = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@VM_CONFIG_SWAP_IS_ACTIVE = common dso_local global i64 0, align 8
@DELAYED_COMPACTIONS_PER_PASS = common dso_local global i32 0, align 4
@c_swapout_count = common dso_local global i64 0, align 8
@C_SWAPOUT_LIMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_compressor_do_delayed_compactions(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i64, i64* @FALSE, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i32*, i32** @c_list_lock, align 8
  %8 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %9 = call i32 @LCK_MTX_ASSERT(i32* %7, i32 %8)
  br label %10

10:                                               ; preds = %66, %29, %1
  %11 = call i32 @queue_empty(i32* @c_minor_list_head)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @FALSE, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %69

19:                                               ; preds = %17
  %20 = call i64 @queue_first(i32* @c_minor_list_head)
  %21 = inttoptr i64 %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %3, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = call i32 @lck_mtx_lock_spin_always(i32* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load i32*, i32** @c_list_lock, align 8
  %31 = call i32 @lck_mtx_unlock_always(i32* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = call i32 @c_seg_wait_on_busy(%struct.TYPE_5__* %32)
  %34 = load i32*, i32** @c_list_lock, align 8
  %35 = call i32 @lck_mtx_lock_spin_always(i32* %34)
  br label %10

36:                                               ; preds = %19
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = call i32 @C_SEG_BUSY(%struct.TYPE_5__* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = load i64, i64* @TRUE, align 8
  %41 = load i64, i64* @FALSE, align 8
  %42 = load i64, i64* @TRUE, align 8
  %43 = call i32 @c_seg_do_minor_compaction_and_unlock(%struct.TYPE_5__* %39, i64 %40, i64 %41, i64 %42)
  %44 = load i64, i64* @VM_CONFIG_SWAP_IS_ACTIVE, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @DELAYED_COMPACTIONS_PER_PASS, align 4
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* @TRUE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = call i64 (...) @compressor_needs_to_swap()
  %57 = load i64, i64* @TRUE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %51
  %60 = load i64, i64* @c_swapout_count, align 8
  %61 = load i64, i64* @C_SWAPOUT_LIMIT, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %63, %59, %55
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %46, %36
  %67 = load i32*, i32** @c_list_lock, align 8
  %68 = call i32 @lck_mtx_lock_spin_always(i32* %67)
  br label %10

69:                                               ; preds = %17
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @queue_empty(i32*) #1

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

declare dso_local i32 @c_seg_wait_on_busy(%struct.TYPE_5__*) #1

declare dso_local i32 @C_SEG_BUSY(%struct.TYPE_5__*) #1

declare dso_local i32 @c_seg_do_minor_compaction_and_unlock(%struct.TYPE_5__*, i64, i64, i64) #1

declare dso_local i64 @compressor_needs_to_swap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
