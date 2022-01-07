; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1529.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1529.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_FAILED_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"%s HTTP/1.1\0D\0AGET http://1529.com/1529\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_PROXYTYPE = common dso_local global i32 0, align 4
@CURLPROXY_HTTP = common dso_local global i64 0, align 8
@CURLOPT_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [512 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load i64, i64* @CURLE_FAILED_INIT, align 8
  store i64 %7, i64* %5, align 8
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @msnprintf(i8* %8, i32 512, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %12 = call i64 @curl_global_init(i32 %11)
  %13 = load i64, i64* @CURLE_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %18, i32* %2, align 4
  br label %55

19:                                               ; preds = %1
  %20 = call i32* (...) @curl_easy_init()
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (...) @curl_global_cleanup()
  %27 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %27, i32* %2, align 4
  br label %55

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @CURLOPT_URL, align 4
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %32 = call i32 (i32*, i32, ...) @test_setopt(i32* %29, i32 %30, i8* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @CURLOPT_PROXY, align 4
  %35 = load i64, i64* @libtest_arg2, align 8
  %36 = call i32 (i32*, i32, ...) @test_setopt(i32* %33, i32 %34, i64 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %39 = call i32 (i32*, i32, ...) @test_setopt(i32* %37, i32 %38, i64 1)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @CURLOPT_PROXYTYPE, align 4
  %42 = load i64, i64* @CURLPROXY_HTTP, align 8
  %43 = call i32 (i32*, i32, ...) @test_setopt(i32* %40, i32 %41, i64 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @CURLOPT_HEADER, align 4
  %46 = call i32 (i32*, i32, ...) @test_setopt(i32* %44, i32 %45, i64 1)
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @curl_easy_perform(i32* %47)
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %28
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @curl_easy_cleanup(i32* %50)
  %52 = call i32 (...) @curl_global_cleanup()
  %53 = load i64, i64* %5, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %23, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8*) #1

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
