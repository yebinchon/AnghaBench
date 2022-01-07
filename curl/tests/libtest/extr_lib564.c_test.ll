; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib564.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib564.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_PROXYTYPE = common dso_local global i32 0, align 4
@CURLPROXY_SOCKS4 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Start at URL 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %6, align 8
  %12 = call i32 (...) @start_test_timing()
  %13 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %14 = call i32 @global_init(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @easy_init(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @CURLOPT_URL, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 (i32*, i32, ...) @easy_setopt(i32* %17, i32 %18, i8* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %23 = call i32 (i32*, i32, ...) @easy_setopt(i32* %21, i32 %22, i64 1)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @CURLOPT_PROXY, align 4
  %26 = load i64, i64* @libtest_arg2, align 8
  %27 = call i32 (i32*, i32, ...) @easy_setopt(i32* %24, i32 %25, i64 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @CURLOPT_PROXYTYPE, align 4
  %30 = load i64, i64* @CURLPROXY_SOCKS4, align 8
  %31 = call i32 (i32*, i32, ...) @easy_setopt(i32* %28, i32 %29, i64 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @multi_init(i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @multi_add_handle(i32* %34, i32* %35)
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %48, %1
  store i32 -99, i32* %11, align 4
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @multi_perform(i32* %42, i32* %5)
  %44 = call i32 (...) @abort_on_test_timeout()
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %58

48:                                               ; preds = %39
  %49 = call i32 @FD_ZERO(i32* %8)
  %50 = call i32 @FD_ZERO(i32* %9)
  %51 = call i32 @FD_ZERO(i32* %10)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @multi_fdset(i32* %52, i32* %8, i32* %9, i32* %10, i32* %11)
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @select_test(i32 %55, i32* %8, i32* %9, i32* %10, %struct.timeval* %7)
  %57 = call i32 (...) @abort_on_test_timeout()
  br label %39

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @curl_easy_cleanup(i32* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @curl_multi_cleanup(i32* %62)
  %64 = call i32 (...) @curl_global_cleanup()
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
