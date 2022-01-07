; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_unlock_slow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_unlock_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@LCK_MTX_TAG_INDIRECT = common dso_local global i32 0, align 4
@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_SPIN_MSK = common dso_local global i32 0, align 4
@LCK_MTX_PROMOTED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_WAITERS_MSK = common dso_local global i32 0, align 4
@LCK_MTX_WAITER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_unlock_slow(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = call i32 @ordered_load_mtx_state(%struct.TYPE_14__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @LCK_MTX_TAG_INDIRECT, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @__improbable(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @get_indirect_mutex(%struct.TYPE_14__** %2, i32* %4)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %16, %1
  %19 = call %struct.TYPE_13__* (...) @current_thread()
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @__improbable(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %31 = call i32 @lck_mtx_interlock_lock_clear_flags(%struct.TYPE_14__* %29, i32 %30, i32* %4)
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = call i32 @ordered_store_mtx_owner(%struct.TYPE_14__* %33, i32 0)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %37 = load i32, i32* @LCK_MTX_SPIN_MSK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @LCK_MTX_PROMOTED_MSK, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @LCK_MTX_WAITERS_MSK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %32
  %49 = load i64, i64* @LCK_MTX_WAITER, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %32
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ordered_store_mtx_state_release(%struct.TYPE_14__* %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @LCK_MTX_PROMOTED_MSK, align 4
  %60 = load i32, i32* @LCK_MTX_WAITERS_MSK, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  call void @lck_mtx_unlock_wakeup_tail(%struct.TYPE_14__* %65, i32 %66, i32 %67)
  br label %72

68:                                               ; preds = %54
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i32 @lck_mtx_unlock_finish_inline(%struct.TYPE_14__* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  ret void
}

declare dso_local i32 @ordered_load_mtx_state(%struct.TYPE_14__*) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @get_indirect_mutex(%struct.TYPE_14__**, i32*) #1

declare dso_local %struct.TYPE_13__* @current_thread(...) #1

declare dso_local i32 @lck_mtx_interlock_lock_clear_flags(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @ordered_store_mtx_owner(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ordered_store_mtx_state_release(%struct.TYPE_14__*, i32) #1

declare dso_local void @lck_mtx_unlock_wakeup_tail(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock_finish_inline(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
