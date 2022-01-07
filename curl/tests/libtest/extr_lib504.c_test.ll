; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib504.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib504.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"curl_multi_perform()\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Expected: not running\0A\00", align 1
@TEST_ERR_SUCCESS = common dso_local global i32 0, align 4
@TEST_ERR_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"running == %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"curl_multi_fdset()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %14 = call i32 (...) @start_test_timing()
  %15 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %16 = call i32 @global_init(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @easy_init(i32* %17)
  %19 = load i64, i64* @libtest_arg2, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @CURLOPT_PROXY, align 4
  %24 = load i64, i64* @libtest_arg2, align 8
  %25 = call i32 (i32*, i32, ...) @easy_setopt(i32* %22, i32 %23, i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @CURLOPT_URL, align 4
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 (i32*, i32, ...) @easy_setopt(i32* %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %33 = call i32 (i32*, i32, ...) @easy_setopt(i32* %31, i32 %32, i64 1)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @multi_init(i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @multi_add_handle(i32* %36, i32* %37)
  br label %39

39:                                               ; preds = %64, %26
  store i32 -99, i32* %11, align 4
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @multi_perform(i32* %44, i32* %9)
  %46 = call i32 (...) @abort_on_test_timeout()
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %39
  %50 = load i32*, i32** %5, align 8
  %51 = call i32* @curl_multi_info_read(i32* %50, i32* %12)
  store i32* %51, i32** %13, align 8
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32*, i32** %13, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @TEST_ERR_SUCCESS, align 4
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %56, %49
  %62 = load i32, i32* @TEST_ERR_FAILURE, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %79

64:                                               ; preds = %39
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = call i32 @FD_ZERO(i32* %6)
  %69 = call i32 @FD_ZERO(i32* %7)
  %70 = call i32 @FD_ZERO(i32* %8)
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @multi_fdset(i32* %73, i32* %6, i32* %7, i32* %8, i32* %11)
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @select_test(i32 %76, i32* %6, i32* %7, i32* %8, %struct.timeval* %10)
  %78 = call i32 (...) @abort_on_test_timeout()
  br label %39

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @curl_multi_remove_handle(i32* %81, i32* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @curl_multi_cleanup(i32* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @curl_easy_cleanup(i32* %86)
  %88 = call i32 (...) @curl_global_cleanup()
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

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
