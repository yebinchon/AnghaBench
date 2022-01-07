; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib503.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib503.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_USERPWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"test:ing\00", align 1
@CURLOPT_PROXYUSERPWD = common dso_local global i32 0, align 4
@CURLOPT_HTTPPROXYTUNNEL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = call i32 (...) @start_test_timing()
  %13 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %14 = call i32 @global_init(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @easy_init(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @CURLOPT_PROXY, align 4
  %19 = load i64, i64* @libtest_arg2, align 8
  %20 = call i32 (i32*, i32, ...) @easy_setopt(i32* %17, i32 %18, i64 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @CURLOPT_URL, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (i32*, i32, ...) @easy_setopt(i32* %21, i32 %22, i8* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @CURLOPT_USERPWD, align 4
  %27 = call i32 (i32*, i32, ...) @easy_setopt(i32* %25, i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @CURLOPT_PROXYUSERPWD, align 4
  %30 = call i32 (i32*, i32, ...) @easy_setopt(i32* %28, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @CURLOPT_HTTPPROXYTUNNEL, align 4
  %33 = call i32 (i32*, i32, ...) @easy_setopt(i32* %31, i32 %32, i64 1)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @CURLOPT_HEADER, align 4
  %36 = call i32 (i32*, i32, ...) @easy_setopt(i32* %34, i32 %35, i64 1)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %39 = call i32 (i32*, i32, ...) @easy_setopt(i32* %37, i32 %38, i64 1)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @multi_init(i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @multi_add_handle(i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %54, %1
  store i32 -99, i32* %11, align 4
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @multi_perform(i32* %48, i32* %6)
  %50 = call i32 (...) @abort_on_test_timeout()
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %64

54:                                               ; preds = %45
  %55 = call i32 @FD_ZERO(i32* %8)
  %56 = call i32 @FD_ZERO(i32* %9)
  %57 = call i32 @FD_ZERO(i32* %10)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @multi_fdset(i32* %58, i32* %8, i32* %9, i32* %10, i32* %11)
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @select_test(i32 %61, i32* %8, i32* %9, i32* %10, %struct.timeval* %7)
  %63 = call i32 (...) @abort_on_test_timeout()
  br label %45

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @curl_multi_remove_handle(i32* %66, i32* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @curl_multi_cleanup(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @curl_easy_cleanup(i32* %71)
  %73 = call i32 (...) @curl_global_cleanup()
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

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
