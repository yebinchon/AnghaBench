; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_rw_speed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_rw_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { float, float }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"reading at n=%d, eof=%d\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s %d bytes (block size %d) in %.3fms (%.3f MB/s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Wrote\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_rw_speed(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.timeval, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.timeval, align 4
  %16 = alloca float, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %11, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %25 = call i32* @fopen(i8* %20, i8* %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @TEST_ASSERT_NOT_NULL(i32* %26)
  %28 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  store i64 0, i64* %14, align 8
  br label %29

29:                                               ; preds = %60, %5
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @fileno(i32* %38)
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @write(i32 %39, i8* %40, i64 %41)
  %43 = call i32 @TEST_ASSERT_EQUAL(i64 %37, i32 %42)
  br label %59

44:                                               ; preds = %33
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @fileno(i32* %45)
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @read(i32 %46, i8* %47, i64 %48)
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i64, i64* %14, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @feof(i32* %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %53, i32 %55)
  %57 = call i32 (...) @TEST_FAIL()
  br label %58

58:                                               ; preds = %52, %44
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %14, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %14, align 8
  br label %29

63:                                               ; preds = %29
  %64 = call i32 @gettimeofday(%struct.timeval* %15, i32* null)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = call i32 @TEST_ASSERT_EQUAL(i64 0, i32 %66)
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %69 = load float, float* %68, align 4
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %71 = load float, float* %70, align 4
  %72 = fsub float %69, %71
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %76 = load float, float* %75, align 4
  %77 = fsub float %74, %76
  %78 = fmul float 0x3EB0C6F7A0000000, %77
  %79 = fadd float %72, %78
  store float %79, float* %16, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load float, float* %16, align 4
  %87 = fpext float %86 to double
  %88 = fmul double %87, 1.000000e+03
  %89 = load i64, i64* %9, align 8
  %90 = uitofp i64 %89 to float
  %91 = load float, float* %16, align 4
  %92 = fmul float 0x4130000000000000, %91
  %93 = fdiv float %90, %92
  %94 = fpext float %93 to double
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %83, i64 %84, i64 %85, double %88, double %94)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i64, i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @TEST_FAIL(...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
