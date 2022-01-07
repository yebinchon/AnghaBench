; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_rw_done.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_rw_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@memory_order_release_smp = common dso_local global i32 0, align 4
@LCK_RW_INTERLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"lck_rw_done(): Interlock locked (%p): %x\00", align 1
@LCK_RW_SHARED_MASK = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"state=0x%x, owner=%p\00", align 1
@LCK_RW_SHARED_READER = common dso_local global i64 0, align 8
@LCK_RW_WANT_UPGRADE = common dso_local global i32 0, align 4
@LCK_RW_WANT_EXCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Releasing non-exclusive RW lock without a reader refcount!\00", align 1
@TRUE = common dso_local global i64 0, align 8
@LCK_RW_W_WAITING = common dso_local global i32 0, align 4
@LCK_RW_PRIV_EXCL = common dso_local global i32 0, align 4
@LCK_RW_R_WAITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lck_rw_done(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load i64, i64* @FALSE, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %130, %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* @memory_order_release_smp, align 4
  %11 = call i32 @atomic_exchange_begin32(i32* %9, i32* %4, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @LCK_RW_INTERLOCK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %7
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @LCK_RW_SHARED_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @THREAD_NULL, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @assertf(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 %37)
  %39 = load i64, i64* @LCK_RW_SHARED_READER, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @LCK_RW_SHARED_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %25
  br label %95

49:                                               ; preds = %25
  br label %121

50:                                               ; preds = %20
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %73

60:                                               ; preds = %50
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @LCK_RW_WANT_EXCL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @LCK_RW_WANT_EXCL, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %60
  %71 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  br label %73

73:                                               ; preds = %72, %55
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 (...) @current_thread()
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @assertf(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %85, i64 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %91 = load i64, i64* @THREAD_NULL, align 8
  %92 = call i32 @ordered_store_rw_owner(%struct.TYPE_6__* %90, i64 %91)
  %93 = load i64, i64* @TRUE, align 8
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %76, %73
  br label %95

95:                                               ; preds = %94, %48
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @LCK_RW_W_WAITING, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load i32, i32* @LCK_RW_W_WAITING, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @LCK_RW_PRIV_EXCL, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %100
  %110 = load i32, i32* @LCK_RW_R_WAITING, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %3, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %100
  br label %120

115:                                              ; preds = %95
  %116 = load i32, i32* @LCK_RW_R_WAITING, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %3, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %115, %114
  br label %121

121:                                              ; preds = %120, %49
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @memory_order_release_smp, align 4
  %127 = call i64 @atomic_exchange_complete32(i32* %123, i32 %124, i32 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %132

130:                                              ; preds = %121
  %131 = call i32 (...) @cpu_pause()
  br label %7

132:                                              ; preds = %129
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @lck_rw_done_gen(%struct.TYPE_6__* %133, i32 %134)
  ret i32 %135
}

declare dso_local i32 @atomic_exchange_begin32(i32*, i32*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @assertf(i32, i8*, i32, i64) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @ordered_store_rw_owner(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @atomic_exchange_complete32(i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i32 @lck_rw_done_gen(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
