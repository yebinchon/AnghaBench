; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_lck_rw_sleep_deadline.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_lck_rw_sleep_deadline.c"
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
define dso_local i64 @lck_rw_sleep_deadline(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call %struct.TYPE_4__* (...) @current_thread()
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @LCK_SLEEP_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @LCK_SLEEP_PROMOTED_PRI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @assert_wait_deadline(i32 %34, i32 %35, i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @THREAD_WAITING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %33
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @lck_rw_done(i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %45 = call i64 @thread_block(i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @LCK_SLEEP_SHARED, align 4
  %53 = load i32, i32* @LCK_SLEEP_EXCLUSIVE, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @lck_rw_lock(i32* %58, i32 %59)
  br label %73

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @LCK_SLEEP_EXCLUSIVE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @lck_rw_lock_exclusive(i32* %67)
  br label %72

69:                                               ; preds = %61
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @lck_rw_lock_shared(i32* %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %73, %41
  br label %84

75:                                               ; preds = %33
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @lck_rw_done(i32* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @LCK_SLEEP_PROMOTED_PRI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %84
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  %94 = icmp eq i32 %92, 1
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @TH_SFLAG_RW_PROMOTED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @unslide_for_kdebug(i32 %108)
  %110 = call i32 @lck_rw_clear_promotion(%struct.TYPE_4__* %107, i32 %109)
  br label %111

111:                                              ; preds = %102, %95, %89
  br label %112

112:                                              ; preds = %111, %84
  %113 = load i64, i64* %11, align 8
  ret i64 %113
}

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @assert_wait_deadline(i32, i32, i32) #1

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
