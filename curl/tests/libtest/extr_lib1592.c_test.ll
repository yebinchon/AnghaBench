; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1592.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1592.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLM_OK = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_DNS_SERVERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@CURLE_OK = common dso_local global i64 0, align 8
@TEST_HANG_TIMEOUT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"CURLOPT_DNS_SERVERS not supported; assuming curl_multi_remove_handle() will block\0A\00", align 1
@CURLOPT_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"curl_multi_perform()...\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"curl_multi_perform() succeeded\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"curl_multi_remove_handle()...\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"curl_multi_remove_handle() failed, with code %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"curl_multi_remove_handle() succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = load i64, i64* @CURLM_OK, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %10 = call i32 @global_init(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @multi_init(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @easy_init(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %17 = call i32 (i32*, i32, ...) @easy_setopt(i32* %15, i32 %16, i64 1)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @CURLOPT_URL, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32*, i32, ...) @easy_setopt(i32* %18, i32 %19, i8* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @CURLOPT_DNS_SERVERS, align 4
  %24 = call i64 @curl_easy_setopt(i32* %22, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @CURLE_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @TEST_HANG_TIMEOUT, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  br label %35

30:                                               ; preds = %1
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @TEST_HANG_TIMEOUT, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @CURLOPT_TIMEOUT_MS, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32*, i32, ...) @easy_setopt(i32* %36, i32 %37, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @multi_add_handle(i32* %40, i32* %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @multi_perform(i32* %45, i32* %3)
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 (...) @start_test_timing()
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @curl_multi_remove_handle(i32* %52, i32* %53)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %35
  %58 = load i32, i32* @stderr, align 4
  %59 = load i64, i64* %6, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  br label %66

62:                                               ; preds = %35
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %65 = call i32 (...) @abort_on_test_timeout()
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @curl_easy_cleanup(i32* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @curl_multi_cleanup(i32* %69)
  %71 = call i32 (...) @curl_global_cleanup()
  %72 = load i64, i64* %6, align 8
  %73 = trunc i64 %72 to i32
  ret i32 %73
}

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i64 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
