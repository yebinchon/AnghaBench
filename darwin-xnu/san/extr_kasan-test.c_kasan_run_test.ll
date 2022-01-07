; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-test.c_kasan_run_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-test.c_kasan_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_test = type { i32 (%struct.kasan_test*)*, i32, i8*, i32 (%struct.kasan_test*)* }

@TEST_UNKNOWN = common dso_local global i32 0, align 4
@num_xnutests = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"KASan: test.%02d INVALID\0A\00", align 1
@TEST_INVALID = common dso_local global i32 0, align 4
@in_test = common dso_local global i32 0, align 4
@jbuf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"KASan: test.%02d SETUP FAIL (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"KASan: test.%02d FAIL (%s)\0A\00", align 1
@TEST_FAIL_NOFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"KASan: test.%02d FAIL %d (%s)\0A\00", align 1
@TEST_FAIL_BADFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"KASan: test.%02d PASS (%s)\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kasan_test*, i32, i32)* @kasan_run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kasan_run_test(%struct.kasan_test* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kasan_test*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kasan_test*, align 8
  %10 = alloca i32, align 4
  store %struct.kasan_test* %0, %struct.kasan_test** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @TEST_UNKNOWN, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.kasan_test*, %struct.kasan_test** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %12, i64 %14
  store %struct.kasan_test* %15, %struct.kasan_test** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @num_xnutests, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %24 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %23, i32 0, i32 0
  %25 = load i32 (%struct.kasan_test*)*, i32 (%struct.kasan_test*)** %24, align 8
  %26 = icmp ne i32 (%struct.kasan_test*)* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22, %18, %3
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @TEST_INVALID, align 4
  store i32 %30, i32* %4, align 4
  br label %100

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 1, i32* @in_test, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* @jbuf, align 4
  %37 = call i64 @_setjmp(i32 %36) #3
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %41 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %40, i32 0, i32 1
  store i32 0, i32* %41, align 8
  %42 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %43 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %42, i32 0, i32 0
  %44 = load i32 (%struct.kasan_test*)*, i32 (%struct.kasan_test*)** %43, align 8
  %45 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %46 = call i32 %44(%struct.kasan_test* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %52 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %8, align 4
  br label %63

56:                                               ; preds = %39
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %59 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %57, i8* %60)
  %62 = load i32, i32* @TEST_FAIL_NOFAULT, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %56, %49
  br label %87

64:                                               ; preds = %35
  %65 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %66 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %72 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %75 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %73, i8* %76)
  %78 = load i32, i32* @TEST_FAIL_BADFAULT, align 4
  store i32 %78, i32* %8, align 4
  br label %86

79:                                               ; preds = %64
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %82 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %80, i8* %83)
  %85 = load i32, i32* @TEST_PASS, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %79, %69
  br label %87

87:                                               ; preds = %86, %63
  store i32 0, i32* @in_test, align 4
  %88 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %89 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %88, i32 0, i32 3
  %90 = load i32 (%struct.kasan_test*)*, i32 (%struct.kasan_test*)** %89, align 8
  %91 = icmp ne i32 (%struct.kasan_test*)* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %94 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %93, i32 0, i32 3
  %95 = load i32 (%struct.kasan_test*)*, i32 (%struct.kasan_test*)** %94, align 8
  %96 = load %struct.kasan_test*, %struct.kasan_test** %9, align 8
  %97 = call i32 %95(%struct.kasan_test* %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %27
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @printf(i8*, i32, ...) #1

; Function Attrs: returns_twice
declare dso_local i64 @_setjmp(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
