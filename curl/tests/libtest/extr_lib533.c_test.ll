; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib533.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib533.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_FAILONERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Start at URL 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Advancing to URL 1\0A\00", align 1
@libtest_arg2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = call i32 (...) @start_test_timing()
  %14 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %15 = call i32 @global_init(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @easy_init(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @CURLOPT_URL, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32*, i32, ...) @easy_setopt(i32* %18, i32 %19, i8* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %24 = call i32 (i32*, i32, ...) @easy_setopt(i32* %22, i32 %23, i64 1)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @CURLOPT_FAILONERROR, align 4
  %27 = call i32 (i32*, i32, ...) @easy_setopt(i32* %25, i32 %26, i64 1)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @multi_init(i32* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @multi_add_handle(i32* %30, i32* %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %70, %1
  store i32 -99, i32* %12, align 4
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @multi_perform(i32* %38, i32* %5)
  %40 = call i32 (...) @abort_on_test_timeout()
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @curl_multi_remove_handle(i32* %50, i32* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @curl_easy_reset(i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @CURLOPT_URL, align 4
  %57 = load i64, i64* @libtest_arg2, align 8
  %58 = call i32 (i32*, i32, ...) @easy_setopt(i32* %55, i32 %56, i64 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %61 = call i32 (i32*, i32, ...) @easy_setopt(i32* %59, i32 %60, i64 1)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @CURLOPT_FAILONERROR, align 4
  %64 = call i32 (i32*, i32, ...) @easy_setopt(i32* %62, i32 %63, i64 1)
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @multi_add_handle(i32* %65, i32* %66)
  br label %69

68:                                               ; preds = %43
  br label %80

69:                                               ; preds = %47
  br label %70

70:                                               ; preds = %69, %35
  %71 = call i32 @FD_ZERO(i32* %9)
  %72 = call i32 @FD_ZERO(i32* %10)
  %73 = call i32 @FD_ZERO(i32* %11)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @multi_fdset(i32* %74, i32* %9, i32* %10, i32* %11, i32* %12)
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @select_test(i32 %77, i32* %9, i32* %10, i32* %11, %struct.timeval* %8)
  %79 = call i32 (...) @abort_on_test_timeout()
  br label %35

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @curl_easy_cleanup(i32* %82)
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @curl_multi_cleanup(i32* %84)
  %86 = call i32 (...) @curl_global_cleanup()
  %87 = load i32, i32* %3, align 4
  ret i32 %87
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

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_reset(i32*) #1

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
