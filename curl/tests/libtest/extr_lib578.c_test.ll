; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib578.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib578.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_POST = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDSIZE = common dso_local global i32 0, align 4
@data_size = common dso_local global i64 0, align 8
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@data = common dso_local global i64 0, align 8
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@CURLOPT_PROGRESSFUNCTION = common dso_local global i32 0, align 4
@progress_callback = common dso_local global i64 0, align 8
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_TRANSFERTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i64, i64* @CURLE_OK, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %9 = call i64 @curl_global_init(i32 %8)
  %10 = load i64, i64* @CURLE_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %15, i32* %2, align 4
  br label %61

16:                                               ; preds = %1
  %17 = call i32* (...) @curl_easy_init()
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (...) @curl_global_cleanup()
  %24 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %24, i32* %2, align 4
  br label %61

25:                                               ; preds = %16
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @CURLOPT_URL, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i32*, i32, ...) @test_setopt(i32* %26, i32 %27, i8* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @CURLOPT_POST, align 4
  %32 = call i32 (i32*, i32, ...) @test_setopt(i32* %30, i32 %31, i64 1)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @CURLOPT_POSTFIELDSIZE, align 4
  %35 = load i64, i64* @data_size, align 8
  %36 = call i32 (i32*, i32, ...) @test_setopt(i32* %33, i32 %34, i64 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %39 = load i64, i64* @data, align 8
  %40 = call i32 (i32*, i32, ...) @test_setopt(i32* %37, i32 %38, i64 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %43 = call i32 (i32*, i32, ...) @test_setopt(i32* %41, i32 %42, i64 0)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @CURLOPT_PROGRESSFUNCTION, align 4
  %46 = load i64, i64* @progress_callback, align 8
  %47 = call i32 (i32*, i32, ...) @test_setopt(i32* %44, i32 %45, i64 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %50 = call i32 (i32*, i32, ...) @test_setopt(i32* %48, i32 %49, i64 1)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @CURLOPT_HEADER, align 4
  %53 = call i32 (i32*, i32, ...) @test_setopt(i32* %51, i32 %52, i64 1)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @curl_easy_perform(i32* %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %25
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @curl_easy_cleanup(i32* %57)
  %59 = call i32 (...) @curl_global_cleanup()
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %20, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
