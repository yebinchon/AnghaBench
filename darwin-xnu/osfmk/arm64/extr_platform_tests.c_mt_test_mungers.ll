; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_mt_test_mungers.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_mt_test_mungers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.munger_test = type { i64, i64*, i32, i32 (i64*)*, i32 }

@MT_MAX_ARGS = common dso_local global i32 0, align 4
@MT_TEST_COUNT = common dso_local global i64 0, align 8
@munger_tests = common dso_local global %struct.munger_test* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Testing %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Index %d: expected %llx, got %llx.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mt_test_mungers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt_test_mungers() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.munger_test*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MT_MAX_ARGS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i64, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %75, %0
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @MT_TEST_COUNT, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %11
  %16 = load %struct.munger_test*, %struct.munger_test** @munger_tests, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.munger_test, %struct.munger_test* %16, i64 %17
  store %struct.munger_test* %18, %struct.munger_test** %5, align 8
  store i32 1, i32* %6, align 4
  %19 = load %struct.munger_test*, %struct.munger_test** %5, align 8
  %20 = getelementptr inbounds %struct.munger_test, %struct.munger_test* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @T_LOG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.munger_test*, %struct.munger_test** %5, align 8
  %24 = getelementptr inbounds %struct.munger_test, %struct.munger_test* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = mul nuw i64 8, %8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @mt_reset(i32 %25, i32 %27, i64* %10)
  %29 = load %struct.munger_test*, %struct.munger_test** %5, align 8
  %30 = getelementptr inbounds %struct.munger_test, %struct.munger_test* %29, i32 0, i32 3
  %31 = load i32 (i64*)*, i32 (i64*)** %30, align 8
  %32 = call i32 %31(i64* %10)
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %63, %15
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.munger_test*, %struct.munger_test** %5, align 8
  %36 = getelementptr inbounds %struct.munger_test, %struct.munger_test* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i64, i64* %10, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.munger_test*, %struct.munger_test** %5, align 8
  %44 = getelementptr inbounds %struct.munger_test, %struct.munger_test* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %42, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %39
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.munger_test*, %struct.munger_test** %5, align 8
  %53 = getelementptr inbounds %struct.munger_test, %struct.munger_test* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i64, i64* %10, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @T_FAIL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %57, i64 %60)
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %50, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %4, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %4, align 8
  br label %33

66:                                               ; preds = %33
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.munger_test*, %struct.munger_test** %5, align 8
  %71 = getelementptr inbounds %struct.munger_test, %struct.munger_test* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @T_PASS(i32 %72)
  br label %74

74:                                               ; preds = %69, %66
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %3, align 8
  br label %11

78:                                               ; preds = %11
  %79 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @T_LOG(i8*, i32) #2

declare dso_local i32 @mt_reset(i32, i32, i64*) #2

declare dso_local i32 @T_FAIL(i8*, i64, i64, i64) #2

declare dso_local i32 @T_PASS(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
