; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_lock_contended.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_lock_contended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct._lck_mtx_ext_ = type { i32 }

@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"lck_mtx_lock_spinwait_x86 returned %d for mutex %p\0A\00", align 1
@LCK_MTX_WAITERS_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64, i64*)* @lck_mtx_lock_contended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lck_mtx_lock_contended(%struct.TYPE_15__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  br label %10

10:                                               ; preds = %51, %3
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = bitcast %struct.TYPE_15__* %14 to %struct._lck_mtx_ext_*
  %16 = load i64*, i64** %6, align 8
  %17 = call i32 @lck_mtx_update_miss(%struct._lck_mtx_ext_* %15, i64* %16)
  br label %18

18:                                               ; preds = %13, %10
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = call i32 @lck_mtx_lock_spinwait_x86(%struct.TYPE_15__* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = call i32 @ordered_load_mtx_state(%struct.TYPE_15__* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %68 [
    i32 129, label %24
    i32 128, label %32
    i32 130, label %67
  ]

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = bitcast %struct.TYPE_15__* %28 to %struct._lck_mtx_ext_*
  %30 = call i32 @lck_mtx_update_direct_wait(%struct._lck_mtx_ext_* %29)
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %18, %31
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = call i32 @lck_mtx_interlock_lock(%struct.TYPE_15__* %33, i32* %8)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %32
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = bitcast %struct.TYPE_15__* %47 to %struct._lck_mtx_ext_*
  %49 = load i64*, i64** %6, align 8
  %50 = call i32 @lck_mtx_update_wait(%struct._lck_mtx_ext_* %48, i64* %49)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = call i32 @lck_mtx_lock_wait_x86(%struct.TYPE_15__* %52)
  br label %10

54:                                               ; preds = %32
  %55 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ordered_store_mtx_state_release(%struct.TYPE_15__* %58, i32 %59)
  %61 = call %struct.TYPE_14__* (...) @current_thread()
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %9, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = ptrtoint %struct.TYPE_14__* %63 to i64
  %65 = call i32 @ordered_store_mtx_owner(%struct.TYPE_15__* %62, i64 %64)
  br label %66

66:                                               ; preds = %54
  br label %72

67:                                               ; preds = %18
  br label %72

68:                                               ; preds = %18
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %69, %struct.TYPE_15__* %70)
  br label %72

72:                                               ; preds = %68, %67, %66
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @LCK_MTX_WAITERS_MSK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %72
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %72
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = load i64, i64* %5, align 8
  call void @lck_mtx_lock_acquire_tail(%struct.TYPE_15__* %87, i64 %88)
  br label %95

89:                                               ; preds = %81
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = call i32 @ordered_load_mtx_state(%struct.TYPE_15__* %91)
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @lck_mtx_lock_finish_inline(%struct.TYPE_15__* %90, i32 %92, i64 %93)
  br label %95

95:                                               ; preds = %89, %86
  ret void
}

declare dso_local i32 @lck_mtx_update_miss(%struct._lck_mtx_ext_*, i64*) #1

declare dso_local i32 @lck_mtx_lock_spinwait_x86(%struct.TYPE_15__*) #1

declare dso_local i32 @ordered_load_mtx_state(%struct.TYPE_15__*) #1

declare dso_local i32 @lck_mtx_update_direct_wait(%struct._lck_mtx_ext_*) #1

declare dso_local i32 @lck_mtx_interlock_lock(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lck_mtx_update_wait(%struct._lck_mtx_ext_*, i64*) #1

declare dso_local i32 @lck_mtx_lock_wait_x86(%struct.TYPE_15__*) #1

declare dso_local i32 @ordered_store_mtx_state_release(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_14__* @current_thread(...) #1

declare dso_local i32 @ordered_store_mtx_owner(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @panic(i8*, i32, %struct.TYPE_15__*) #1

declare dso_local void @lck_mtx_lock_acquire_tail(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @lck_mtx_lock_finish_inline(%struct.TYPE_15__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
