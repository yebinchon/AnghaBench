; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_done.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@memory_order_release_smp = common dso_local global i32 0, align 4
@LCK_RW_INTERLOCK = common dso_local global i32 0, align 4
@LCK_RW_SHARED_MASK = common dso_local global i32 0, align 4
@LCK_RW_SHARED_READER = common dso_local global i64 0, align 8
@LCK_RW_WANT_UPGRADE = common dso_local global i32 0, align 4
@LCK_RW_WANT_WRITE = common dso_local global i32 0, align 4
@LCK_RW_WANT_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Releasing non-exclusive RW lock without a reader refcount!\00", align 1
@LCK_RW_W_WAITING = common dso_local global i32 0, align 4
@LCK_RW_PRIV_EXCL = common dso_local global i32 0, align 4
@LCK_RW_R_WAITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lck_rw_done(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  br label %5

5:                                                ; preds = %94, %14, %1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* @memory_order_release_smp, align 4
  %9 = call i32 @atomic_exchange_begin32(i32* %7, i32* %4, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @LCK_RW_INTERLOCK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = call i32 (...) @atomic_exchange_abort()
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = call i32 @lck_rw_interlock_spin(%struct.TYPE_5__* %16)
  br label %5

18:                                               ; preds = %5
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @LCK_RW_SHARED_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i64, i64* @LCK_RW_SHARED_READER, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @LCK_RW_SHARED_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %59

34:                                               ; preds = %23
  br label %85

35:                                               ; preds = %18
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %35
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @LCK_RW_WANT_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @LCK_RW_WANT_EXCL, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %45
  %56 = call i32 @panic(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @LCK_RW_W_WAITING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load i32, i32* @LCK_RW_W_WAITING, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @LCK_RW_PRIV_EXCL, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load i32, i32* @LCK_RW_R_WAITING, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %64
  br label %84

79:                                               ; preds = %59
  %80 = load i32, i32* @LCK_RW_R_WAITING, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %78
  br label %85

85:                                               ; preds = %84, %34
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @memory_order_release_smp, align 4
  %91 = call i64 @atomic_exchange_complete32(i32* %87, i32 %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %96

94:                                               ; preds = %85
  %95 = call i32 (...) @cpu_pause()
  br label %5

96:                                               ; preds = %93
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @lck_rw_done_gen(%struct.TYPE_5__* %97, i32 %98)
  ret i32 %99
}

declare dso_local i32 @atomic_exchange_begin32(i32*, i32*, i32) #1

declare dso_local i32 @atomic_exchange_abort(...) #1

declare dso_local i32 @lck_rw_interlock_spin(%struct.TYPE_5__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @atomic_exchange_complete32(i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i32 @lck_rw_done_gen(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
