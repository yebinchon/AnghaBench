; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1500.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1500.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TEST_ERR_FAILURE = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@TEST_HANG_TIMEOUT = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"curl_multi_wait() returned %d\0A\00", align 1
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
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %10 = load i32, i32* @TEST_ERR_FAILURE, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
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
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @multi_add_handle(i32* %25, i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @multi_perform(i32* %28, i32* %5)
  %30 = call i32 (...) @abort_on_test_timeout()
  br label %31

31:                                               ; preds = %45, %1
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @TEST_HANG_TIMEOUT, align 4
  %37 = call i32 @curl_multi_wait(i32* %35, i32* null, i32 0, i32 %36, i32* %9)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @CURLM_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %44, i32* %7, align 4
  br label %61

45:                                               ; preds = %34
  %46 = call i32 (...) @abort_on_test_timeout()
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @multi_perform(i32* %47, i32* %5)
  %49 = call i32 (...) @abort_on_test_timeout()
  br label %31

50:                                               ; preds = %31
  %51 = load i32*, i32** %4, align 8
  %52 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %51, i32* %5)
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %8, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @curl_multi_cleanup(i32* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @curl_easy_cleanup(i32* %64)
  %66 = call i32 (...) @curl_global_cleanup()
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %61
  %72 = load i32, i32* %6, align 4
  ret i32 %72
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
