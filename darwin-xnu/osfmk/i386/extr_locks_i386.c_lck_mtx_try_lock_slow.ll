; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_try_lock_slow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_try_lock_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct._lck_mtx_ext_ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_TAG_DESTROYED = common dso_local global i32 0, align 4
@LCK_MTX_TAG_INDIRECT = common dso_local global i32 0, align 4
@LCK_MTX_WAITERS_MSK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lck_mtx_try_lock_slow(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @ordered_load_mtx_state(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %13 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = call i64 @__improbable(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @__improbable(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %2, align 8
  br label %109

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @LCK_MTX_TAG_DESTROYED, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @__improbable(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32*, i32** %3, align 8
  %38 = call i64 @lck_mtx_try_destroyed(i32* %37)
  store i64 %38, i64* %2, align 8
  br label %109

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @LCK_MTX_TAG_INDIRECT, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @__improbable(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = call i64 @get_indirect_mutex(i32** %3, i32* %5)
  store i64 %47, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = bitcast i32* %48 to %struct._lck_mtx_ext_*
  %50 = call i32 @lck_mtx_update_util(%struct._lck_mtx_ext_* %49)
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lck_mtx_try_lock_wait_interlock_to_clear(i32* %52, i32* %5)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %3, align 8
  %60 = bitcast i32* %59 to %struct._lck_mtx_ext_*
  %61 = call i32 @lck_mtx_update_miss(%struct._lck_mtx_ext_* %60, i32* %6)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %2, align 8
  br label %109

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %1
  br label %66

66:                                               ; preds = %88, %65
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %69 = call i32 @lck_mtx_interlock_try_lock_set_flags(i32* %67, i32 %68, i32* %5)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @__improbable(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %66
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @lck_mtx_try_lock_wait_interlock_to_clear(i32* %76, i32* %5)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %4, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** %3, align 8
  %84 = bitcast i32* %83 to %struct._lck_mtx_ext_*
  %85 = call i32 @lck_mtx_update_miss(%struct._lck_mtx_ext_* %84, i32* %6)
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i64, i64* @FALSE, align 8
  store i64 %87, i64* %2, align 8
  br label %109

88:                                               ; preds = %75
  br label %66

89:                                               ; preds = %66
  %90 = call %struct.TYPE_3__* (...) @current_thread()
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %7, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = ptrtoint %struct.TYPE_3__* %92 to i64
  %94 = call i32 @ordered_store_mtx_owner(i32* %91, i64 %93)
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @LCK_MTX_WAITERS_MSK, align 4
  %97 = and i32 %95, %96
  %98 = call i64 @__improbable(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32*, i32** %3, align 8
  %102 = call i64 @lck_mtx_try_lock_acquire_tail(i32* %101)
  store i64 %102, i64* %2, align 8
  br label %109

103:                                              ; preds = %89
  %104 = load i32*, i32** %3, align 8
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @ordered_load_mtx_state(i32* %105)
  %107 = call i32 @lck_mtx_try_lock_finish_inline(i32* %104, i32 %106)
  %108 = load i64, i64* @TRUE, align 8
  store i64 %108, i64* %2, align 8
  br label %109

109:                                              ; preds = %103, %100, %86, %62, %36, %27
  %110 = load i64, i64* %2, align 8
  ret i64 %110
}

declare dso_local i32 @ordered_load_mtx_state(i32*) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i64 @lck_mtx_try_destroyed(i32*) #1

declare dso_local i64 @get_indirect_mutex(i32**, i32*) #1

declare dso_local i32 @lck_mtx_update_util(%struct._lck_mtx_ext_*) #1

declare dso_local i32 @lck_mtx_try_lock_wait_interlock_to_clear(i32*, i32*) #1

declare dso_local i32 @lck_mtx_update_miss(%struct._lck_mtx_ext_*, i32*) #1

declare dso_local i32 @lck_mtx_interlock_try_lock_set_flags(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @current_thread(...) #1

declare dso_local i32 @ordered_store_mtx_owner(i32*, i64) #1

declare dso_local i64 @lck_mtx_try_lock_acquire_tail(i32*) #1

declare dso_local i32 @lck_mtx_try_lock_finish_inline(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
