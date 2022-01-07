; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1502.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1502.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"google.com:%s:%s\00", align 1
@libtest_arg2 = common dso_local global i32 0, align 4
@libtest_arg3 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"curl_slist_append() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_RESOLVE = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [160 x i8], align 16
  %10 = alloca %struct.curl_slist*, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = getelementptr inbounds [160 x i8], [160 x i8]* %9, i64 0, i64 0
  %17 = load i32, i32* @libtest_arg2, align 4
  %18 = load i32, i32* @libtest_arg3, align 4
  %19 = call i32 @msnprintf(i8* %16, i32 160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = call i32 (...) @start_test_timing()
  %21 = getelementptr inbounds [160 x i8], [160 x i8]* %9, i64 0, i64 0
  %22 = call i8* @curl_slist_append(i32* null, i8* %21)
  %23 = bitcast i8* %22 to %struct.curl_slist*
  store %struct.curl_slist* %23, %struct.curl_slist** %10, align 8
  %24 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %25 = icmp ne %struct.curl_slist* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %29, i32* %2, align 4
  br label %102

30:                                               ; preds = %1
  %31 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %32 = call i32 @res_global_init(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %37 = bitcast %struct.curl_slist* %36 to i8*
  %38 = call i32 @curl_slist_free_all(i8* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %102

40:                                               ; preds = %30
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @easy_init(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @CURLOPT_URL, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i32*, i32, ...) @easy_setopt(i32* %43, i32 %44, i8* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @CURLOPT_HEADER, align 4
  %49 = call i32 (i32*, i32, ...) @easy_setopt(i32* %47, i32 %48, i64 1)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @CURLOPT_RESOLVE, align 4
  %52 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %53 = call i32 (i32*, i32, ...) @easy_setopt(i32* %50, i32 %51, %struct.curl_slist* %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32* @curl_easy_duphandle(i32* %54)
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %40
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @curl_easy_cleanup(i32* %59)
  %61 = load i32*, i32** %5, align 8
  store i32* %61, i32** %4, align 8
  br label %69

62:                                               ; preds = %40
  %63 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %64 = bitcast %struct.curl_slist* %63 to i8*
  %65 = call i32 @curl_slist_free_all(i8* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @curl_easy_cleanup(i32* %66)
  %68 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %68, i32* %2, align 4
  br label %102

69:                                               ; preds = %58
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @multi_init(i32* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @multi_add_handle(i32* %72, i32* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @multi_perform(i32* %75, i32* %7)
  %77 = call i32 (...) @abort_on_test_timeout()
  br label %78

78:                                               ; preds = %81, %69
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  store i32 -99, i32* %15, align 4
  %82 = call i32 @FD_ZERO(i32* %12)
  %83 = call i32 @FD_ZERO(i32* %13)
  %84 = call i32 @FD_ZERO(i32* %14)
  %85 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @multi_fdset(i32* %87, i32* %12, i32* %13, i32* %14, i32* %15)
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32 @select_test(i32 %90, i32* %12, i32* %13, i32* %14, %struct.timeval* %11)
  %92 = call i32 (...) @abort_on_test_timeout()
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @multi_perform(i32* %93, i32* %7)
  %95 = call i32 (...) @abort_on_test_timeout()
  br label %78

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %99 = bitcast %struct.curl_slist* %98 to i8*
  %100 = call i32 @curl_slist_free_all(i8* %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %97, %62, %35, %26
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i8* @curl_slist_append(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @res_global_init(i32) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32* @curl_easy_duphandle(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
