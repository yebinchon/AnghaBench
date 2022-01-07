; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_lock_slow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_lock_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct._lck_mtx_ext_ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_TAG_DESTROYED = common dso_local global i32 0, align 4
@LCK_MTX_TAG_INDIRECT = common dso_local global i32 0, align 4
@LCK_MTX_SPIN_MSK = common dso_local global i32 0, align 4
@LCK_MTX_WAITERS_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_lock_slow(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @ordered_load_mtx_state(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %12 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = call i64 @__improbable(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %71

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @__improbable(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %3, align 4
  call void @lck_mtx_lock_contended(i32* %27, i32 %28, i32* %5)
  br label %109

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @LCK_MTX_TAG_DESTROYED, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @__improbable(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32*, i32** %2, align 8
  call void @lck_mtx_destroyed(i32* %37)
  br label %109

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @LCK_MTX_TAG_INDIRECT, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @__improbable(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = call i32 @get_indirect_mutex(i32** %2, i32* %4)
  store i32 %46, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = bitcast i32* %47 to %struct._lck_mtx_ext_*
  %49 = call i32 @lck_mtx_update_util(%struct._lck_mtx_ext_* %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @LCK_MTX_SPIN_MSK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %57 = and i32 %55, %56
  %58 = call i32 @assert(i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = bitcast i32* %59 to %struct._lck_mtx_ext_*
  %61 = call i32 @lck_mtx_update_miss(%struct._lck_mtx_ext_* %60, i32* %5)
  br label %62

62:                                               ; preds = %54, %45
  br label %63

63:                                               ; preds = %62, %38
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @lck_mtx_lock_wait_interlock_to_clear(i32* %64, i32* %4)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* %3, align 4
  call void @lck_mtx_lock_contended(i32* %68, i32 %69, i32* %5)
  br label %109

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %1
  br label %72

72:                                               ; preds = %88, %71
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %75 = call i32 @lck_mtx_interlock_try_lock_set_flags(i32* %73, i32 %74, i32* %4)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @__improbable(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @lck_mtx_lock_wait_interlock_to_clear(i32* %82, i32* %4)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i32*, i32** %2, align 8
  %87 = load i32, i32* %3, align 4
  call void @lck_mtx_lock_contended(i32* %86, i32 %87, i32* %5)
  br label %109

88:                                               ; preds = %81
  br label %72

89:                                               ; preds = %72
  %90 = call %struct.TYPE_3__* (...) @current_thread()
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %6, align 8
  %91 = load i32*, i32** %2, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = ptrtoint %struct.TYPE_3__* %92 to i64
  %94 = call i32 @ordered_store_mtx_owner(i32* %91, i64 %93)
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @LCK_MTX_WAITERS_MSK, align 4
  %97 = and i32 %95, %96
  %98 = call i64 @__improbable(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32*, i32** %2, align 8
  %102 = load i32, i32* %3, align 4
  call void @lck_mtx_lock_acquire_tail(i32* %101, i32 %102)
  br label %109

103:                                              ; preds = %89
  %104 = load i32*, i32** %2, align 8
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @ordered_load_mtx_state(i32* %105)
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @lck_mtx_lock_finish_inline(i32* %104, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %100, %85, %67, %36, %26
  ret void
}

declare dso_local i32 @ordered_load_mtx_state(i32*) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local void @lck_mtx_lock_contended(i32*, i32, i32*) #1

declare dso_local void @lck_mtx_destroyed(i32*) #1

declare dso_local i32 @get_indirect_mutex(i32**, i32*) #1

declare dso_local i32 @lck_mtx_update_util(%struct._lck_mtx_ext_*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lck_mtx_update_miss(%struct._lck_mtx_ext_*, i32*) #1

declare dso_local i32 @lck_mtx_lock_wait_interlock_to_clear(i32*, i32*) #1

declare dso_local i32 @lck_mtx_interlock_try_lock_set_flags(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @current_thread(...) #1

declare dso_local i32 @ordered_store_mtx_owner(i32*, i64) #1

declare dso_local void @lck_mtx_lock_acquire_tail(i32*, i32) #1

declare dso_local i32 @lck_mtx_lock_finish_inline(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
