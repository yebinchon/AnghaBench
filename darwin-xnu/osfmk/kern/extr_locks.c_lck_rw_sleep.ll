; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_lck_rw_sleep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_lck_rw_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@LCK_SLEEP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid lock sleep action %x\0A\00", align 1
@LCK_SLEEP_PROMOTED_PRI = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@LCK_SLEEP_UNLOCK = common dso_local global i32 0, align 4
@LCK_SLEEP_SHARED = common dso_local global i32 0, align 4
@LCK_SLEEP_EXCLUSIVE = common dso_local global i32 0, align 4
@TH_SFLAG_RW_PROMOTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lck_rw_sleep(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call %struct.TYPE_4__* (...) @current_thread()
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @LCK_SLEEP_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @LCK_SLEEP_PROMOTED_PRI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @assert_wait(i32 %32, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @THREAD_WAITING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @lck_rw_done(i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %42 = call i64 @thread_block(i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @LCK_SLEEP_SHARED, align 4
  %50 = load i32, i32* @LCK_SLEEP_EXCLUSIVE, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @lck_rw_lock(i32* %55, i32 %56)
  br label %70

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @LCK_SLEEP_EXCLUSIVE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @lck_rw_lock_exclusive(i32* %64)
  br label %69

66:                                               ; preds = %58
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @lck_rw_lock_shared(i32* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %38
  br label %81

72:                                               ; preds = %31
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @lck_rw_done(i32* %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %71
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @LCK_SLEEP_PROMOTED_PRI, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 4
  %91 = icmp eq i32 %89, 1
  br i1 %91, label %92, label %108

92:                                               ; preds = %86
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @TH_SFLAG_RW_PROMOTED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %102 = and i32 %100, %101
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @unslide_for_kdebug(i32 %105)
  %107 = call i32 @lck_rw_clear_promotion(%struct.TYPE_4__* %104, i32 %106)
  br label %108

108:                                              ; preds = %99, %92, %86
  br label %109

109:                                              ; preds = %108, %81
  %110 = load i64, i64* %9, align 8
  ret i64 %110
}

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @assert_wait(i32, i32) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i64 @thread_block(i32) #1

declare dso_local i32 @lck_rw_lock(i32*, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lck_rw_clear_promotion(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @unslide_for_kdebug(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
