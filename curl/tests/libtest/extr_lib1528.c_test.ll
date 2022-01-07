; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1528.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1528.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }

@CURLE_FAILED_INIT = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"User-Agent: Http Agent\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Proxy-User-Agent: Http Agent2\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_PROXYHEADER = common dso_local global i32 0, align 4
@CURLOPT_HEADEROPT = common dso_local global i32 0, align 4
@CURLHEADER_SEPARATE = common dso_local global i64 0, align 8
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
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca %struct.curl_slist*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %8 = load i64, i64* @CURLE_FAILED_INIT, align 8
  store i64 %8, i64* %5, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %6, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %7, align 8
  %9 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %10 = call i64 @curl_global_init(i32 %9)
  %11 = load i64, i64* @CURLE_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %16, i32* %2, align 4
  br label %77

17:                                               ; preds = %1
  %18 = call i32* (...) @curl_easy_init()
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @curl_global_cleanup()
  %25 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %25, i32* %2, align 4
  br label %77

26:                                               ; preds = %17
  %27 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %28 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store %struct.curl_slist* %28, %struct.curl_slist** %6, align 8
  %29 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %30 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store %struct.curl_slist* %30, %struct.curl_slist** %7, align 8
  %31 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %32 = icmp ne %struct.curl_slist* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %67

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @CURLOPT_URL, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 (i32*, i32, ...) @test_setopt(i32* %35, i32 %36, i8* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @CURLOPT_PROXY, align 4
  %41 = load i64, i64* @libtest_arg2, align 8
  %42 = call i32 (i32*, i32, ...) @test_setopt(i32* %39, i32 %40, i64 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %45 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %46 = call i32 (i32*, i32, ...) @test_setopt(i32* %43, i32 %44, %struct.curl_slist* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @CURLOPT_PROXYHEADER, align 4
  %49 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %50 = call i32 (i32*, i32, ...) @test_setopt(i32* %47, i32 %48, %struct.curl_slist* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @CURLOPT_HEADEROPT, align 4
  %53 = load i64, i64* @CURLHEADER_SEPARATE, align 8
  %54 = call i32 (i32*, i32, ...) @test_setopt(i32* %51, i32 %52, i64 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %57 = call i32 (i32*, i32, ...) @test_setopt(i32* %55, i32 %56, i64 1)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @CURLOPT_PROXYTYPE, align 4
  %60 = load i64, i64* @CURLPROXY_HTTP, align 8
  %61 = call i32 (i32*, i32, ...) @test_setopt(i32* %58, i32 %59, i64 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @CURLOPT_HEADER, align 4
  %64 = call i32 (i32*, i32, ...) @test_setopt(i32* %62, i32 %63, i64 1)
  %65 = load i32*, i32** %4, align 8
  %66 = call i64 @curl_easy_perform(i32* %65)
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %34, %33
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @curl_easy_cleanup(i32* %68)
  %70 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %71 = call i32 @curl_slist_free_all(%struct.curl_slist* %70)
  %72 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %73 = call i32 @curl_slist_free_all(%struct.curl_slist* %72)
  %74 = call i32 (...) @curl_global_cleanup()
  %75 = load i64, i64* %5, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %67, %21, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
