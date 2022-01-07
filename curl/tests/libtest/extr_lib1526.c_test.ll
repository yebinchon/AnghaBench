; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1526.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1526.c_test.c"
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
@.str.3 = private unnamed_addr constant [24 x i8] c"User-Agent: Proxy Agent\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Expect:\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_PROXYHEADER = common dso_local global i32 0, align 4
@CURLOPT_HEADEROPT = common dso_local global i32 0, align 4
@CURLHEADER_SEPARATE = common dso_local global i64 0, align 8
@CURLOPT_POST = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_PROXYTYPE = common dso_local global i32 0, align 4
@CURLPROXY_HTTP = common dso_local global i64 0, align 8
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@fwrite = common dso_local global i64 0, align 8
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i64 0, align 8
@CURLOPT_HTTPPROXYTUNNEL = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca %struct.curl_slist*, align 8
  %8 = alloca %struct.curl_slist*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = load i64, i64* @CURLE_FAILED_INIT, align 8
  store i64 %9, i64* %5, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %6, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %7, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %8, align 8
  %10 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %11 = call i64 @curl_global_init(i32 %10)
  %12 = load i64, i64* @CURLE_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %17, i32* %2, align 4
  br label %110

18:                                               ; preds = %1
  %19 = call i32* (...) @curl_easy_init()
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (...) @curl_global_cleanup()
  %26 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %26, i32* %2, align 4
  br label %110

27:                                               ; preds = %18
  %28 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %29 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store %struct.curl_slist* %29, %struct.curl_slist** %6, align 8
  %30 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %31 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store %struct.curl_slist* %31, %struct.curl_slist** %7, align 8
  %32 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %33 = icmp ne %struct.curl_slist* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %36 = icmp ne %struct.curl_slist* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %27
  br label %100

38:                                               ; preds = %34
  %39 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %40 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store %struct.curl_slist* %40, %struct.curl_slist** %8, align 8
  %41 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %42 = icmp ne %struct.curl_slist* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %100

44:                                               ; preds = %38
  %45 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  store %struct.curl_slist* %45, %struct.curl_slist** %7, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @CURLOPT_URL, align 4
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i32*, i32, ...) @test_setopt(i32* %46, i32 %47, i8* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @CURLOPT_PROXY, align 4
  %52 = load i64, i64* @libtest_arg2, align 8
  %53 = call i32 (i32*, i32, ...) @test_setopt(i32* %50, i32 %51, i64 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %56 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %57 = call i32 (i32*, i32, ...) @test_setopt(i32* %54, i32 %55, %struct.curl_slist* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @CURLOPT_PROXYHEADER, align 4
  %60 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %61 = call i32 (i32*, i32, ...) @test_setopt(i32* %58, i32 %59, %struct.curl_slist* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @CURLOPT_HEADEROPT, align 4
  %64 = load i64, i64* @CURLHEADER_SEPARATE, align 8
  %65 = call i32 (i32*, i32, ...) @test_setopt(i32* %62, i32 %63, i64 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @CURLOPT_POST, align 4
  %68 = call i32 (i32*, i32, ...) @test_setopt(i32* %66, i32 %67, i64 0)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %71 = call i32 (i32*, i32, ...) @test_setopt(i32* %69, i32 %70, i64 1)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %74 = call i32 (i32*, i32, ...) @test_setopt(i32* %72, i32 %73, i64 1)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @CURLOPT_PROXYTYPE, align 4
  %77 = load i64, i64* @CURLPROXY_HTTP, align 8
  %78 = call i32 (i32*, i32, ...) @test_setopt(i32* %75, i32 %76, i64 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* @CURLOPT_HEADER, align 4
  %81 = call i32 (i32*, i32, ...) @test_setopt(i32* %79, i32 %80, i64 1)
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %84 = load i64, i64* @fwrite, align 8
  %85 = call i32 (i32*, i32, ...) @test_setopt(i32* %82, i32 %83, i64 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %88 = load i64, i64* @read_callback, align 8
  %89 = call i32 (i32*, i32, ...) @test_setopt(i32* %86, i32 %87, i64 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @CURLOPT_HTTPPROXYTUNNEL, align 4
  %92 = call i32 (i32*, i32, ...) @test_setopt(i32* %90, i32 %91, i64 1)
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @CURLOPT_INFILESIZE, align 4
  %95 = load i32, i32* @data, align 4
  %96 = call i64 @strlen(i32 %95)
  %97 = call i32 (i32*, i32, ...) @test_setopt(i32* %93, i32 %94, i64 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i64 @curl_easy_perform(i32* %98)
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %44, %43, %37
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @curl_easy_cleanup(i32* %101)
  %103 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %104 = call i32 @curl_slist_free_all(%struct.curl_slist* %103)
  %105 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %106 = call i32 @curl_slist_free_all(%struct.curl_slist* %105)
  %107 = call i32 (...) @curl_global_cleanup()
  %108 = load i64, i64* %5, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %100, %22, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
