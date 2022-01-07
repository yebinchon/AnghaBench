; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1552.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1552.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_USERPWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"u:s\00", align 1
@TEST_HANG_TIMEOUT = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"curl_multi_wait() returned %d\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 3, i32* %9, align 4
  %11 = call i32 (...) @start_test_timing()
  %12 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %13 = call i32 @global_init(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @multi_init(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @easy_init(i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @CURLOPT_URL, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32*, i32, ...) @easy_setopt(i32* %18, i32 %19, i8* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @CURLOPT_HEADER, align 4
  %24 = call i32 (i32*, i32, ...) @easy_setopt(i32* %22, i32 %23, i64 1)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %27 = call i32 (i32*, i32, ...) @easy_setopt(i32* %25, i32 %26, i64 1)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @CURLOPT_USERPWD, align 4
  %30 = call i32 (i32*, i32, ...) @easy_setopt(i32* %28, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @multi_add_handle(i32* %31, i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @multi_perform(i32* %34, i32* %5)
  %36 = call i32 (...) @abort_on_test_timeout()
  br label %37

37:                                               ; preds = %57, %1
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %41, 0
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %46, label %62

46:                                               ; preds = %44
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @TEST_HANG_TIMEOUT, align 4
  %49 = call i32 @curl_multi_wait(i32* %47, i32* null, i32 0, i32 %48, i32* %10)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @CURLM_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %56, i32* %7, align 4
  br label %73

57:                                               ; preds = %46
  %58 = call i32 (...) @abort_on_test_timeout()
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @multi_perform(i32* %59, i32* %5)
  %61 = call i32 (...) @abort_on_test_timeout()
  br label %37

62:                                               ; preds = %44
  %63 = load i32*, i32** %4, align 8
  %64 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %63, i32* %5)
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %8, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %53
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @curl_multi_cleanup(i32* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @curl_easy_cleanup(i32* %76)
  %78 = call i32 (...) @curl_global_cleanup()
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %73
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @curl_multi_wait(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
