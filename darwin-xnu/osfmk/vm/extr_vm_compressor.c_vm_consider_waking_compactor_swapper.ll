; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_consider_waking_compactor_swapper.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_consider_waking_compactor_swapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@c_segment_count = common dso_local global i64 0, align 8
@compaction_swapper_running = common dso_local global i64 0, align 8
@compaction_swapper_awakened = common dso_local global i32 0, align 4
@compaction_swapper_inited = common dso_local global i32 0, align 4
@compaction_swapper_init_now = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@c_minor_count = common dso_local global i64 0, align 8
@compressor_object = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@compressor_bytes_used = common dso_local global i32 0, align 4
@c_list_lock = common dso_local global i32 0, align 4
@fastwake_warmup = common dso_local global i8* null, align 8
@VM_WAKEUP_COMPACTOR_SWAPPER = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@c_compressor_swap_trigger = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_consider_waking_compactor_swapper() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @FALSE, align 8
  %4 = ptrtoint i8* %3 to i64
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* @c_segment_count, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %77

8:                                                ; preds = %0
  %9 = load i64, i64* @compaction_swapper_running, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @compaction_swapper_awakened, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %8
  br label %77

15:                                               ; preds = %11
  %16 = load i32, i32* @compaction_swapper_inited, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @compaction_swapper_init_now, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  store i32 1, i32* @compaction_swapper_init_now, align 4
  %22 = load i64, i64* @TRUE, align 8
  store i64 %22, i64* %1, align 8
  br label %23

23:                                               ; preds = %21, %18, %15
  %24 = load i64, i64* @c_minor_count, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = call i64 (...) @COMPRESSOR_NEEDS_TO_MINOR_COMPACT()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %1, align 8
  br label %56

31:                                               ; preds = %26, %23
  %32 = call i64 (...) @compressor_needs_to_swap()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %1, align 8
  br label %55

36:                                               ; preds = %31
  %37 = load i64, i64* @c_minor_count, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compressor_object, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_SIZE_64, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @compressor_bytes_used, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load i32, i32* %2, align 4
  %49 = sdiv i32 %48, 10
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i64, i64* @TRUE, align 8
  store i64 %52, i64* %1, align 8
  br label %53

53:                                               ; preds = %51, %39
  br label %54

54:                                               ; preds = %53, %36
  br label %55

55:                                               ; preds = %54, %34
  br label %56

56:                                               ; preds = %55, %29
  %57 = load i64, i64* %1, align 8
  %58 = load i64, i64* @TRUE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load i32, i32* @c_list_lock, align 4
  %62 = call i32 @lck_mtx_lock_spin_always(i32 %61)
  %63 = load i8*, i8** @FALSE, align 8
  store i8* %63, i8** @fastwake_warmup, align 8
  %64 = load i64, i64* @compaction_swapper_running, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i32, i32* @compaction_swapper_awakened, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @VM_WAKEUP_COMPACTOR_SWAPPER, align 4
  %71 = load i32, i32* @DBG_FUNC_NONE, align 4
  %72 = call i32 @memoryshot(i32 %70, i32 %71)
  store i32 1, i32* @compaction_swapper_awakened, align 4
  %73 = call i32 @thread_wakeup(i32 ptrtoint (i32* @c_compressor_swap_trigger to i32))
  br label %74

74:                                               ; preds = %69, %66, %60
  %75 = load i32, i32* @c_list_lock, align 4
  %76 = call i32 @lck_mtx_unlock_always(i32 %75)
  br label %77

77:                                               ; preds = %7, %14, %74, %56
  ret void
}

declare dso_local i64 @COMPRESSOR_NEEDS_TO_MINOR_COMPACT(...) #1

declare dso_local i64 @compressor_needs_to_swap(...) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32) #1

declare dso_local i32 @memoryshot(i32, i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
