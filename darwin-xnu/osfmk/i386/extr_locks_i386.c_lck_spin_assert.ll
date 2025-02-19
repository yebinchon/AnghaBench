; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_spin_assert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_spin_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@LCK_ASSERT_OWNED = common dso_local global i32 0, align 4
@LCK_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"lck_spin_assert(): invalid arg (%u)\00", align 1
@THREAD_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Lock not owned %p = %lx\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Lock not owned by current thread %p = %lx\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Lock owned by current thread %p = %lx\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Lock %p owned by thread %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_spin_assert(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @LCK_ASSERT_OWNED, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @LCK_ASSERT_NOTOWNED, align 4
  %14 = icmp ne i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ false, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @__improbable(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %6, align 8
  %28 = call i64 (...) @current_thread()
  store i64 %28, i64* %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @LCK_ASSERT_OWNED, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @THREAD_NULL, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @__improbable(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %40, i64 %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @__improbable(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %43
  br label %81

55:                                               ; preds = %23
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @LCK_ASSERT_NOTOWNED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @THREAD_NULL, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @__improbable(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_3__* %71, i64 %72)
  br label %78

74:                                               ; preds = %66
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_3__* %75, i64 %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %59
  br label %80

80:                                               ; preds = %79, %55
  br label %81

81:                                               ; preds = %80, %54
  ret void
}

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
