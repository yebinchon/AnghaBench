; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1591.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1591.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@CURLE_FAILED_INIT = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Trailer: my-super-awesome-trailer, my-other-awesome-trailer\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_PUT = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i8* null, align 8
@CURLOPT_TRAILERFUNCTION = common dso_local global i32 0, align 4
@trailers_callback = common dso_local global i8* null, align 8
@CURLOPT_TRAILERDATA = common dso_local global i32 0, align 4

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
  br label %67

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
  br label %67

25:                                               ; preds = %16
  %26 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %27 = bitcast %struct.curl_slist* %26 to i8*
  %28 = call i8* @curl_slist_append(i8* %27, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %29 = bitcast i8* %28 to %struct.curl_slist*
  store %struct.curl_slist* %29, %struct.curl_slist** %6, align 8
  %30 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %31 = icmp ne %struct.curl_slist* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %58

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @CURLOPT_URL, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i32*, i32, ...) @test_setopt(i32* %34, i32 %35, i8* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %40 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %41 = call i32 (i32*, i32, ...) @test_setopt(i32* %38, i32 %39, %struct.curl_slist* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @CURLOPT_PUT, align 4
  %44 = call i32 (i32*, i32, ...) @test_setopt(i32* %42, i32 %43, i64 1)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %47 = load i8*, i8** @read_callback, align 8
  %48 = call i32 (i32*, i32, ...) @test_setopt(i32* %45, i32 %46, i8* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @CURLOPT_TRAILERFUNCTION, align 4
  %51 = load i8*, i8** @trailers_callback, align 8
  %52 = call i32 (i32*, i32, ...) @test_setopt(i32* %49, i32 %50, i8* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @CURLOPT_TRAILERDATA, align 4
  %55 = call i32 (i32*, i32, ...) @test_setopt(i32* %53, i32 %54, i8* null)
  %56 = load i32*, i32** %4, align 8
  %57 = call i64 @curl_easy_perform(i32* %56)
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %33, %32
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @curl_easy_cleanup(i32* %59)
  %61 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %62 = bitcast %struct.curl_slist* %61 to i8*
  %63 = call i32 @curl_slist_free_all(i8* %62)
  %64 = call i32 (...) @curl_global_cleanup()
  %65 = load i64, i64* %5, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %58, %20, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
