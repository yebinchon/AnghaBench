; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib566.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib566.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLINFO_CONTENT_LENGTH_DOWNLOAD = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CL: %.0f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store double 3.000000e+00, double* %6, align 8
  %8 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %9 = call i64 @curl_global_init(i32 %8)
  %10 = load i64, i64* @CURLE_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i32*
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = call i32* (...) @curl_easy_init()
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 (...) @curl_global_cleanup()
  %28 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %28, i32* %2, align 4
  br label %63

29:                                               ; preds = %18
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @CURLOPT_URL, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i32*, i32, ...) @test_setopt(i32* %30, i32 %31, i8* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @CURLOPT_HEADER, align 4
  %36 = call i32 (i32*, i32, ...) @test_setopt(i32* %34, i32 %35, i64 1)
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @curl_easy_perform(i32* %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %29
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @CURLINFO_CONTENT_LENGTH_DOWNLOAD, align 4
  %44 = call i64 @curl_easy_getinfo(i32* %42, i32 %43, double* %6)
  store i64 %44, i64* %4, align 8
  %45 = load i32, i32* @libtest_arg2, align 4
  %46 = call i32* @fopen(i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32*, i32** %7, align 8
  %51 = load double, double* %6, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), double %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @fclose(i32* %53)
  br label %55

55:                                               ; preds = %49, %41
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @curl_easy_cleanup(i32* %58)
  %60 = call i32 (...) @curl_global_cleanup()
  %61 = load i64, i64* %4, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %57, %22, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i64 @curl_easy_getinfo(i32*, i32, double*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
