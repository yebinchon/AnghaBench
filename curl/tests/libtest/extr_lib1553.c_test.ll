; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1553.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1553.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@CURL_ZERO_TERMINATED = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_MIMEPOST = common dso_local global i32 0, align 4
@CURLOPT_USERPWD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"u:s\00", align 1
@CURLOPT_XFERINFOFUNCTION = common dso_local global i32 0, align 4
@xferinfo = common dso_local global i64 0, align 8
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@TEST_HANG_TIMEOUT = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"curl_multi_wait() returned %d\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 1, i32* %10, align 4
  %12 = call i32 (...) @start_test_timing()
  %13 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %14 = call i32 @global_init(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @multi_init(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @easy_init(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @curl_mime_init(i32* %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @curl_mime_addpart(i32* %21)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @curl_mime_name(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %27 = call i32 @curl_mime_data(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @CURLOPT_URL, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 (i32*, i32, ...) @easy_setopt(i32* %28, i32 %29, i8* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @CURLOPT_HEADER, align 4
  %34 = call i32 (i32*, i32, ...) @easy_setopt(i32* %32, i32 %33, i64 1)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %37 = call i32 (i32*, i32, ...) @easy_setopt(i32* %35, i32 %36, i64 1)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @CURLOPT_MIMEPOST, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 (i32*, i32, ...) @easy_setopt(i32* %38, i32 %39, i32* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @CURLOPT_USERPWD, align 4
  %44 = call i32 (i32*, i32, ...) @easy_setopt(i32* %42, i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @CURLOPT_XFERINFOFUNCTION, align 4
  %47 = load i64, i64* @xferinfo, align 8
  %48 = call i32 (i32*, i32, ...) @easy_setopt(i32* %45, i32 %46, i64 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %51 = call i32 (i32*, i32, ...) @easy_setopt(i32* %49, i32 %50, i64 1)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @multi_add_handle(i32* %52, i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @multi_perform(i32* %55, i32* %5)
  %57 = call i32 (...) @abort_on_test_timeout()
  br label %58

58:                                               ; preds = %78, %1
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %10, align 4
  %64 = icmp ne i32 %62, 0
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i1 [ false, %58 ], [ %64, %61 ]
  br i1 %66, label %67, label %83

67:                                               ; preds = %65
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @TEST_HANG_TIMEOUT, align 4
  %70 = call i32 @curl_multi_wait(i32* %68, i32* null, i32 0, i32 %69, i32* %11)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @CURLM_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %77, i32* %7, align 4
  br label %84

78:                                               ; preds = %67
  %79 = call i32 (...) @abort_on_test_timeout()
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @multi_perform(i32* %80, i32* %5)
  %82 = call i32 (...) @abort_on_test_timeout()
  br label %58

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @curl_mime_free(i32* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @curl_multi_remove_handle(i32* %87, i32* %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @curl_multi_cleanup(i32* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @curl_easy_cleanup(i32* %92)
  %94 = call i32 (...) @curl_global_cleanup()
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %84
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32* @curl_mime_init(i32*) #1

declare dso_local i32* @curl_mime_addpart(i32*) #1

declare dso_local i32 @curl_mime_name(i32*, i8*) #1

declare dso_local i32 @curl_mime_data(i32*, i8*, i32) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @curl_multi_wait(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @curl_mime_free(i32*) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
