; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_lck_mtx_sleep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_lck_mtx_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@DBG_MACH_LOCKS = common dso_local global i32 0, align 4
@LCK_MTX_SLEEP_CODE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@LCK_SLEEP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid lock sleep action %x\0A\00", align 1
@LCK_SLEEP_PROMOTED_PRI = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@LCK_SLEEP_UNLOCK = common dso_local global i32 0, align 4
@LCK_SLEEP_SPIN = common dso_local global i32 0, align 4
@LCK_SLEEP_SPIN_ALWAYS = common dso_local global i32 0, align 4
@TH_SFLAG_RW_PROMOTED = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lck_mtx_sleep(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call %struct.TYPE_4__* (...) @current_thread()
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* @DBG_MACH_LOCKS, align 4
  %13 = load i32, i32* @LCK_MTX_SLEEP_CODE, align 4
  %14 = call i32 @MACHDBG_CODE(i32 %12, i32 %13)
  %15 = load i32, i32* @DBG_FUNC_START, align 4
  %16 = or i32 %14, %15
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32* %20)
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @KERNEL_DEBUG(i32 %16, i32 %18, i32 %19, i32 %21, i32 %23, i32 0)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @LCK_SLEEP_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LCK_SLEEP_PROMOTED_PRI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @assert_wait(i32* %44, i64 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @THREAD_WAITING, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %43
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @lck_mtx_unlock(i32* %51)
  %53 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %54 = call i64 @thread_block(i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @LCK_SLEEP_SPIN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @lck_mtx_lock_spin(i32* %65)
  br label %79

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @LCK_SLEEP_SPIN_ALWAYS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @lck_mtx_lock_spin_always(i32* %73)
  br label %78

75:                                               ; preds = %67
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @lck_mtx_lock(i32* %76)
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %64
  br label %80

80:                                               ; preds = %79, %50
  br label %90

81:                                               ; preds = %43
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @lck_mtx_unlock(i32* %87)
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %80
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @LCK_SLEEP_PROMOTED_PRI, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 4
  %100 = icmp eq i32 %98, 1
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TH_SFLAG_RW_PROMOTED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @unslide_for_kdebug(i32* %110)
  %112 = call i32 @lck_rw_clear_promotion(%struct.TYPE_4__* %109, i32 %111)
  br label %113

113:                                              ; preds = %108, %101, %95
  br label %114

114:                                              ; preds = %113, %90
  %115 = load i32, i32* @DBG_MACH_LOCKS, align 4
  %116 = load i32, i32* @LCK_MTX_SLEEP_CODE, align 4
  %117 = call i32 @MACHDBG_CODE(i32 %115, i32 %116)
  %118 = load i32, i32* @DBG_FUNC_END, align 4
  %119 = or i32 %117, %118
  %120 = load i64, i64* %9, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @KERNEL_DEBUG(i32 %119, i32 %121, i32 0, i32 0, i32 0, i32 0)
  %123 = load i64, i64* %9, align 8
  ret i64 %123
}

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @assert_wait(i32*, i64) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @thread_block(i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_rw_clear_promotion(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @unslide_for_kdebug(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
