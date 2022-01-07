; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib597.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib597.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i32, i32 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_CONNECT_ONLY = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@TEST_HANG_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = call i32 (...) @start_test_timing()
  %17 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %18 = call i32 @global_init(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @easy_init(i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @multi_init(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %25 = call i32 (i32*, i32, ...) @easy_setopt(i32* %23, i32 %24, i64 1)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @CURLOPT_URL, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 (i32*, i32, ...) @easy_setopt(i32* %26, i32 %27, i8* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @CURLOPT_CONNECT_ONLY, align 4
  %32 = call i32 (i32*, i32, ...) @easy_setopt(i32* %30, i32 %31, i64 1)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @multi_add_handle(i32* %33, i32* %34)
  br label %36

36:                                               ; preds = %78, %1
  store i64 -99, i64* %13, align 8
  store i32 -99, i32* %14, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @multi_perform(i32* %37, i32* %6)
  %39 = call i32 (...) @abort_on_test_timeout()
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %83

43:                                               ; preds = %36
  %44 = call i32 @FD_ZERO(i32* %10)
  %45 = call i32 @FD_ZERO(i32* %11)
  %46 = call i32 @FD_ZERO(i32* %12)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @multi_fdset(i32* %47, i32* %10, i32* %11, i32* %12, i32* %14)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @multi_timeout(i32* %49, i64* %13)
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %51, -1
  br i1 %52, label %53, label %72

53:                                               ; preds = %43
  %54 = load i64, i64* %13, align 8
  %55 = load i32, i32* @INT_MAX, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp sgt i64 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @INT_MAX, align 4
  br label %63

60:                                               ; preds = %53
  %61 = load i64, i64* %13, align 8
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %59, %58 ], [ %62, %60 ]
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = sdiv i32 %65, 1000
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %15, align 4
  %69 = srem i32 %68, 1000
  %70 = mul nsw i32 %69, 1000
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  br label %78

72:                                               ; preds = %43
  %73 = load i32, i32* @TEST_HANG_TIMEOUT, align 4
  %74 = sdiv i32 %73, 1000
  %75 = add nsw i32 %74, 1
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %63
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @select_test(i32 %80, i32* %10, i32* %11, i32* %12, %struct.timeval* %9)
  %82 = call i32 (...) @abort_on_test_timeout()
  br label %36

83:                                               ; preds = %42
  %84 = load i32*, i32** %4, align 8
  %85 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %84, i32* %7)
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %8, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32*, i32** %4, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @multi_remove_handle(i32* %94, i32* %95)
  br label %97

97:                                               ; preds = %93
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @curl_multi_cleanup(i32* %98)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @curl_easy_cleanup(i32* %100)
  %102 = call i32 (...) @curl_global_cleanup()
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @multi_timeout(i32*, i64*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
