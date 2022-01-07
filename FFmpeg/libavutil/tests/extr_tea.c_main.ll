; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_tea.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_tea.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVTEA = type { i32 }

@main.src = internal constant [32 x i8] c"HelloWorldHelloWorldHelloWorld\00\00", align 16
@TEA_NUM_TESTS = common dso_local global i32 0, align 4
@tea_test_key = common dso_local global i32* null, align 8
@tea_test_pt = common dso_local global i8** null, align 8
@tea_test_ct = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [11 x i8] c"encryption\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"decryption\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"HALLO123\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"CBC decryption\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"CBC inplace decryption\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Test encryption/decryption success.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.AVTEA*, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca [8 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  store i32 0, i32* %1, align 4
  %8 = call %struct.AVTEA* (...) @av_tea_alloc()
  store %struct.AVTEA* %8, %struct.AVTEA** %2, align 8
  %9 = load %struct.AVTEA*, %struct.AVTEA** %2, align 8
  %10 = icmp ne %struct.AVTEA* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %78

12:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %71, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TEA_NUM_TESTS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %13
  %18 = load %struct.AVTEA*, %struct.AVTEA** %2, align 8
  %19 = load i32*, i32** @tea_test_key, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @av_tea_init(%struct.AVTEA* %18, i32 %23, i32 64)
  %25 = load %struct.AVTEA*, %struct.AVTEA** %2, align 8
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %27 = load i8**, i8*** @tea_test_pt, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** @tea_test_ct, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @test_tea(%struct.AVTEA* %25, i8* %26, i8* %31, i8* %36, i32 1, i8* null, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.AVTEA*, %struct.AVTEA** %2, align 8
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %40 = load i8**, i8*** @tea_test_ct, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** @tea_test_pt, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @test_tea(%struct.AVTEA* %38, i8* %39, i8* %44, i8* %49, i32 1, i8* null, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %52 = call i32 @memcpy(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %53 = load %struct.AVTEA*, %struct.AVTEA** %2, align 8
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %56 = call i32 @av_tea_crypt(%struct.AVTEA* %53, i8* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @main.src, i64 0, i64 0), i32 4, i8* %55, i32 0)
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %58 = call i32 @memcpy(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %59 = load %struct.AVTEA*, %struct.AVTEA** %2, align 8
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %63 = call i32 @test_tea(%struct.AVTEA* %59, i8* %60, i8* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @main.src, i64 0, i64 0), i32 4, i8* %62, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %65 = call i32 @memcpy(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %66 = load %struct.AVTEA*, %struct.AVTEA** %2, align 8
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %70 = call i32 @test_tea(%struct.AVTEA* %66, i8* %67, i8* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @main.src, i64 0, i64 0), i32 4, i8* %69, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %17
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %13

74:                                               ; preds = %13
  %75 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.AVTEA*, %struct.AVTEA** %2, align 8
  %77 = call i32 @av_free(%struct.AVTEA* %76)
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %74, %11
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

declare dso_local %struct.AVTEA* @av_tea_alloc(...) #1

declare dso_local i32 @av_tea_init(%struct.AVTEA*, i32, i32) #1

declare dso_local i32 @test_tea(%struct.AVTEA*, i8*, i8*, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_tea_crypt(%struct.AVTEA*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @av_free(%struct.AVTEA*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
