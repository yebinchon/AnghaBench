; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib655.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib655.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_RESOLVER_START_DATA = common dso_local global i32 0, align 4
@TEST_DATA_STRING = common dso_local global i8* null, align 8
@CURLOPT_RESOLVER_START_FUNCTION = common dso_local global i32 0, align 4
@resolver_alloc_cb_fail = common dso_local global i8* null, align 8
@CURLE_COULDNT_RESOLVE_HOST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [97 x i8] c"curl_easy_perform should have returned CURLE_COULDNT_RESOLVE_HOST but instead returned error %d\0A\00", align 1
@TEST_ERR_FAILURE = common dso_local global i64 0, align 8
@resolver_alloc_cb_pass = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"curl_easy_perform failed.\0A\00", align 1
@cb_count = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Unexpected number of callbacks: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i64, i64* @CURLE_OK, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %8 = call i64 @curl_global_init(i32 %7)
  %9 = load i64, i64* @CURLE_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = call i32* (...) @curl_easy_init()
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %5, align 8
  br label %73

24:                                               ; preds = %15
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @CURLOPT_URL, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @test_setopt(i32* %25, i32 %26, i8* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @CURLOPT_RESOLVER_START_DATA, align 4
  %31 = load i8*, i8** @TEST_DATA_STRING, align 8
  %32 = call i32 @test_setopt(i32* %29, i32 %30, i8* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @CURLOPT_RESOLVER_START_FUNCTION, align 4
  %35 = load i8*, i8** @resolver_alloc_cb_fail, align 8
  %36 = call i32 @test_setopt(i32* %33, i32 %34, i8* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @curl_easy_perform(i32* %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @CURLE_COULDNT_RESOLVE_HOST, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %24
  %43 = load i32, i32* @stderr, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @CURLE_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i64, i64* @TEST_ERR_FAILURE, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %49, %42
  br label %73

52:                                               ; preds = %24
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @CURLOPT_RESOLVER_START_FUNCTION, align 4
  %55 = load i8*, i8** @resolver_alloc_cb_pass, align 8
  %56 = call i32 @test_setopt(i32* %53, i32 %54, i8* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @curl_easy_perform(i32* %57)
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %73

64:                                               ; preds = %52
  %65 = load i32, i32* @cb_count, align 4
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* @cb_count, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i64, i64* @TEST_ERR_FAILURE, align 8
  store i64 %71, i64* %5, align 8
  br label %73

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %67, %61, %51, %19
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @curl_easy_cleanup(i32* %74)
  %76 = call i32 (...) @curl_global_cleanup()
  %77 = load i64, i64* %5, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %73, %11
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @test_setopt(i32*, i32, i8*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
