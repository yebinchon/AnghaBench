; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1525.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1525.c_test.c"
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
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_PROXYHEADER = common dso_local global i32 0, align 4
@CURLOPT_HEADEROPT = common dso_local global i32 0, align 4
@CURLHEADER_UNIFIED = common dso_local global i64 0, align 8
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
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load i64, i64* @CURLE_FAILED_INIT, align 8
  store i64 %7, i64* %5, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %6, align 8
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
  br label %94

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
  br label %94

25:                                               ; preds = %16
  %26 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %27 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store %struct.curl_slist* %27, %struct.curl_slist** %6, align 8
  %28 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %29 = icmp ne %struct.curl_slist* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %86

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @CURLOPT_URL, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i32*, i32, ...) @test_setopt(i32* %32, i32 %33, i8* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @CURLOPT_PROXY, align 4
  %38 = load i64, i64* @libtest_arg2, align 8
  %39 = call i32 (i32*, i32, ...) @test_setopt(i32* %36, i32 %37, i64 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %42 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %43 = call i32 (i32*, i32, ...) @test_setopt(i32* %40, i32 %41, %struct.curl_slist* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @CURLOPT_PROXYHEADER, align 4
  %46 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %47 = call i32 (i32*, i32, ...) @test_setopt(i32* %44, i32 %45, %struct.curl_slist* %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @CURLOPT_HEADEROPT, align 4
  %50 = load i64, i64* @CURLHEADER_UNIFIED, align 8
  %51 = call i32 (i32*, i32, ...) @test_setopt(i32* %48, i32 %49, i64 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @CURLOPT_POST, align 4
  %54 = call i32 (i32*, i32, ...) @test_setopt(i32* %52, i32 %53, i64 0)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %57 = call i32 (i32*, i32, ...) @test_setopt(i32* %55, i32 %56, i64 1)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %60 = call i32 (i32*, i32, ...) @test_setopt(i32* %58, i32 %59, i64 1)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @CURLOPT_PROXYTYPE, align 4
  %63 = load i64, i64* @CURLPROXY_HTTP, align 8
  %64 = call i32 (i32*, i32, ...) @test_setopt(i32* %61, i32 %62, i64 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @CURLOPT_HEADER, align 4
  %67 = call i32 (i32*, i32, ...) @test_setopt(i32* %65, i32 %66, i64 1)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %70 = load i64, i64* @fwrite, align 8
  %71 = call i32 (i32*, i32, ...) @test_setopt(i32* %68, i32 %69, i64 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %74 = load i64, i64* @read_callback, align 8
  %75 = call i32 (i32*, i32, ...) @test_setopt(i32* %72, i32 %73, i64 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @CURLOPT_HTTPPROXYTUNNEL, align 4
  %78 = call i32 (i32*, i32, ...) @test_setopt(i32* %76, i32 %77, i64 1)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* @CURLOPT_INFILESIZE, align 4
  %81 = load i32, i32* @data, align 4
  %82 = call i64 @strlen(i32 %81)
  %83 = call i32 (i32*, i32, ...) @test_setopt(i32* %79, i32 %80, i64 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i64 @curl_easy_perform(i32* %84)
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %31, %30
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @curl_easy_cleanup(i32* %87)
  %89 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %90 = call i32 @curl_slist_free_all(%struct.curl_slist* %89)
  %91 = call i32 (...) @curl_global_cleanup()
  %92 = load i64, i64* %5, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %86, %20, %12
  %95 = load i32, i32* %2, align 4
  ret i32 %95
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
