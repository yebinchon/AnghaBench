; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib549.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib549.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_PROXY_TRANSFER_MODE = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@libtest_arg3 = common dso_local global i64 0, align 8
@CURLOPT_TRANSFERTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %7 = call i64 @curl_global_init(i32 %6)
  %8 = load i64, i64* @CURLE_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = call i32* (...) @curl_easy_init()
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 (...) @curl_global_cleanup()
  %22 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %22, i32* %2, align 4
  br label %53

23:                                               ; preds = %14
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @CURLOPT_PROXY, align 4
  %26 = load i64, i64* @libtest_arg2, align 8
  %27 = call i32 (i32*, i32, ...) @test_setopt(i32* %24, i32 %25, i64 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @CURLOPT_URL, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 (i32*, i32, ...) @test_setopt(i32* %28, i32 %29, i8* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @CURLOPT_PROXY_TRANSFER_MODE, align 4
  %34 = call i32 (i32*, i32, ...) @test_setopt(i32* %32, i32 %33, i64 1)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %37 = call i32 (i32*, i32, ...) @test_setopt(i32* %35, i32 %36, i64 1)
  %38 = load i64, i64* @libtest_arg3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @CURLOPT_TRANSFERTEXT, align 4
  %43 = call i32 (i32*, i32, ...) @test_setopt(i32* %41, i32 %42, i64 1)
  br label %44

44:                                               ; preds = %40, %23
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @curl_easy_perform(i32* %45)
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @curl_easy_cleanup(i32* %48)
  %50 = call i32 (...) @curl_global_cleanup()
  %51 = load i64, i64* %4, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %18, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
