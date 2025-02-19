; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1510.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1510.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@libtest_arg3 = common dso_local global i8* null, align 8
@libtest_arg2 = common dso_local global i8* null, align 8
@NUM_URLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"server%d.example.com:%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"curl_slist_append() failed\0A\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_RESOLVE = common dso_local global i32 0, align 4
@CURLOPT_MAXCONNECTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"http://server%d.example.com:%s/path/1510%04i\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.curl_slist*, align 8
  %9 = alloca %struct.curl_slist*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %8, align 8
  %12 = load i8*, i8** @libtest_arg3, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** @libtest_arg2, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %2, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NUM_URLS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 (i8*, i32, i8*, i32, i8*, ...) @msnprintf(i8* %20, i32 256, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23, i8* %24)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %27 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %29 = bitcast %struct.curl_slist* %28 to i8*
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %31 = call i8* @curl_slist_append(i8* %29, i8* %30)
  %32 = bitcast i8* %31 to %struct.curl_slist*
  store %struct.curl_slist* %32, %struct.curl_slist** %9, align 8
  %33 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  %34 = icmp ne %struct.curl_slist* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %19
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %86

38:                                               ; preds = %19
  %39 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  store %struct.curl_slist* %39, %struct.curl_slist** %8, align 8
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %15

43:                                               ; preds = %15
  %44 = call i32 (...) @start_test_timing()
  %45 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %46 = call i32 @global_init(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @easy_init(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %51 = call i32 (i32*, i32, ...) @easy_setopt(i32* %49, i32 %50, i64 1)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @CURLOPT_HEADER, align 4
  %54 = call i32 (i32*, i32, ...) @easy_setopt(i32* %52, i32 %53, i64 1)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @CURLOPT_RESOLVE, align 4
  %57 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %58 = call i32 (i32*, i32, ...) @easy_setopt(i32* %55, i32 %56, %struct.curl_slist* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @CURLOPT_MAXCONNECTS, align 4
  %61 = call i32 (i32*, i32, ...) @easy_setopt(i32* %59, i32 %60, i64 3)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %82, %43
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @NUM_URLS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 (i8*, i32, i8*, i32, i8*, ...) @msnprintf(i8* %67, i32 256, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %69, i8* %70, i32 %72)
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255
  store i8 0, i8* %74, align 1
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @CURLOPT_URL, align 4
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %78 = call i32 (i32*, i32, ...) @easy_setopt(i32* %75, i32 %76, i8* %77)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @curl_easy_perform(i32* %79)
  store i32 %80, i32* %3, align 4
  %81 = call i32 (...) @abort_on_test_timeout()
  br label %82

82:                                               ; preds = %66
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %62

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85, %35
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @curl_easy_cleanup(i32* %87)
  %89 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %90 = bitcast %struct.curl_slist* %89 to i8*
  %91 = call i32 @curl_slist_free_all(i8* %90)
  %92 = call i32 (...) @curl_global_cleanup()
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
