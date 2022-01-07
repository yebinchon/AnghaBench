; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_spin_assert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_spin_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@LCK_SPIN_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Invalid spinlock %p\00", align 1
@LCK_ILOCK = common dso_local global i64 0, align 8
@LCK_ASSERT_OWNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Lock not owned %p = %lx\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Lock not owned by current thread %p = %lx\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Lock bit not set %p = %lx\00", align 1
@LCK_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Lock owned by current thread %p = %lx\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Lock %p owned by thread %p\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Lock bit set %p = %lx\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"lck_spin_assert(): invalid arg (%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_spin_assert(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LCK_SPIN_TYPE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @LCK_ILOCK, align 8
  %22 = xor i64 %21, -1
  %23 = and i64 %20, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = call i32 (...) @current_thread()
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @LCK_ASSERT_OWNED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %41, i64 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @LCK_ILOCK, align 8
  %47 = and i64 %45, %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_3__* %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %44
  br label %88

54:                                               ; preds = %16
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @LCK_ASSERT_NOTOWNED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_3__* %66, i64 %67)
  br label %73

69:                                               ; preds = %61
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_3__* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @LCK_ILOCK, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_3__* %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %74
  br label %87

84:                                               ; preds = %54
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %83
  br label %88

88:                                               ; preds = %87, %53
  ret void
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
