; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_mtx_unlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_mtx_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@LCK_ILOCK = common dso_local global i64 0, align 8
@LCK_MTX_SPIN_TAG = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@memory_order_release_smp = common dso_local global i32 0, align 4
@LS_LCK_MTX_UNLOCK_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_unlock(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = call i64 (...) @current_thread()
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = call i32 @lck_mtx_verify(%struct.TYPE_7__* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = call i64 @ordered_load_mtx(%struct.TYPE_7__* %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @LCK_ILOCK, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @LCK_MTX_STATE_TO_THREAD(i64 %17)
  %19 = load i64, i64* @LCK_MTX_SPIN_TAG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %16
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @LCK_MTX_THREAD_TO_STATE(i64 %27)
  %29 = load i32, i32* @memory_order_release_smp, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i64 @atomic_compare_exchange(i32* %26, i32 %28, i32 0, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %40

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @lck_mtx_unlock_contended(%struct.TYPE_7__* %36, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %33
  ret void
}

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @lck_mtx_verify(%struct.TYPE_7__*) #1

declare dso_local i64 @ordered_load_mtx(%struct.TYPE_7__*) #1

declare dso_local i64 @LCK_MTX_STATE_TO_THREAD(i64) #1

declare dso_local i64 @atomic_compare_exchange(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @LCK_MTX_THREAD_TO_STATE(i64) #1

declare dso_local i32 @lck_mtx_unlock_contended(%struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
