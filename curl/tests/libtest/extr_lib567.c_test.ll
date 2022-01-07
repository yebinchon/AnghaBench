; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib567.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib567.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@stdout = common dso_local global i8* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_RTSP_STREAM_URI = common dso_local global i32 0, align 4
@CURLOPT_RTSP_REQUEST = common dso_local global i32 0, align 4
@CURL_RTSPREQ_OPTIONS = common dso_local global i8* null, align 8
@CURLOPT_USERAGENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"test567\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Test-Number: 567\00", align 1
@CURLOPT_RTSPHEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.curl_slist*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %6, align 8
  %7 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %8 = call i64 @curl_global_init(i32 %7)
  %9 = load i64, i64* @CURLE_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %14, i32* %2, align 4
  br label %72

15:                                               ; preds = %1
  %16 = call i32* (...) @curl_easy_init()
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (...) @curl_global_cleanup()
  %23 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %23, i32* %2, align 4
  br label %72

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %27 = load i8*, i8** @stdout, align 8
  %28 = call i32 @test_setopt(i32* %25, i32 %26, i8* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %31 = load i8*, i8** @stdout, align 8
  %32 = call i32 @test_setopt(i32* %29, i32 %30, i8* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @CURLOPT_URL, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @test_setopt(i32* %33, i32 %34, i8* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @test_setopt(i32* %37, i32 %38, i8* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %43 = load i8*, i8** @CURL_RTSPREQ_OPTIONS, align 8
  %44 = call i32 @test_setopt(i32* %41, i32 %42, i8* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @CURLOPT_USERAGENT, align 4
  %47 = call i32 @test_setopt(i32* %45, i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %49 = bitcast %struct.curl_slist* %48 to i8*
  %50 = call i8* @curl_slist_append(i8* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %51 = bitcast i8* %50 to %struct.curl_slist*
  store %struct.curl_slist* %51, %struct.curl_slist** %6, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @CURLOPT_RTSPHEADER, align 4
  %54 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %55 = bitcast %struct.curl_slist* %54 to i8*
  %56 = call i32 @test_setopt(i32* %52, i32 %53, i8* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i64 @curl_easy_perform(i32* %57)
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %24
  %60 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %61 = icmp ne %struct.curl_slist* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %64 = bitcast %struct.curl_slist* %63 to i8*
  %65 = call i32 @curl_slist_free_all(i8* %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @curl_easy_cleanup(i32* %67)
  %69 = call i32 (...) @curl_global_cleanup()
  %70 = load i64, i64* %4, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %19, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, i8*) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
