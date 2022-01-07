; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_lck_mtx_sleep_deadline.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_lck_mtx_sleep_deadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@DBG_MACH_LOCKS = common dso_local global i32 0, align 4
@LCK_MTX_SLEEP_DEADLINE_CODE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@LCK_SLEEP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid lock sleep action %x\0A\00", align 1
@LCK_SLEEP_PROMOTED_PRI = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@LCK_SLEEP_UNLOCK = common dso_local global i32 0, align 4
@LCK_SLEEP_SPIN = common dso_local global i32 0, align 4
@TH_SFLAG_RW_PROMOTED = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lck_mtx_sleep_deadline(i32* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = call %struct.TYPE_4__* (...) @current_thread()
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* @DBG_MACH_LOCKS, align 4
  %15 = load i32, i32* @LCK_MTX_SLEEP_DEADLINE_CODE, align 4
  %16 = call i32 @MACHDBG_CODE(i32 %14, i32 %15)
  %17 = load i32, i32* @DBG_FUNC_START, align 4
  %18 = or i32 %16, %17
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32* %22)
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @KERNEL_DEBUG(i32 %18, i32 %20, i32 %21, i32 %23, i32 %25, i32 0)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @LCK_SLEEP_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %5
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @LCK_SLEEP_PROMOTED_PRI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @assert_wait_deadline(i32* %46, i64 %47, i32 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @THREAD_WAITING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %45
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @lck_mtx_unlock(i32* %54)
  %56 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %57 = call i64 @thread_block(i32 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @LCK_SLEEP_SPIN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @lck_mtx_lock_spin(i32* %68)
  br label %73

70:                                               ; preds = %62
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @lck_mtx_lock(i32* %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %53
  br label %84

75:                                               ; preds = %45
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @lck_mtx_unlock(i32* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @LCK_SLEEP_PROMOTED_PRI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %84
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  %94 = icmp eq i32 %92, 1
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @TH_SFLAG_RW_PROMOTED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @unslide_for_kdebug(i32* %104)
  %106 = call i32 @lck_rw_clear_promotion(%struct.TYPE_4__* %103, i32 %105)
  br label %107

107:                                              ; preds = %102, %95, %89
  br label %108

108:                                              ; preds = %107, %84
  %109 = load i32, i32* @DBG_MACH_LOCKS, align 4
  %110 = load i32, i32* @LCK_MTX_SLEEP_DEADLINE_CODE, align 4
  %111 = call i32 @MACHDBG_CODE(i32 %109, i32 %110)
  %112 = load i32, i32* @DBG_FUNC_END, align 4
  %113 = or i32 %111, %112
  %114 = load i64, i64* %11, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @KERNEL_DEBUG(i32 %113, i32 %115, i32 0, i32 0, i32 0, i32 0)
  %117 = load i64, i64* %11, align 8
  ret i64 %117
}

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @assert_wait_deadline(i32*, i64, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @thread_block(i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_rw_clear_promotion(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @unslide_for_kdebug(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
