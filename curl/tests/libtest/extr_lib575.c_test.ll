; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib575.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib575.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_WILDCARDMATCH = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = call i32 (...) @start_test_timing()
  %14 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %15 = call i32 @global_init(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @easy_init(i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @CURLOPT_URL, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32*, i32, ...) @easy_setopt(i32* %18, i32 %19, i8* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @CURLOPT_WILDCARDMATCH, align 4
  %24 = call i32 (i32*, i32, ...) @easy_setopt(i32* %22, i32 %23, i64 1)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %27 = call i32 (i32*, i32, ...) @easy_setopt(i32* %25, i32 %26, i64 1)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @curl_easy_perform(i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %76

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @curl_easy_perform(i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %76

39:                                               ; preds = %33
  %40 = load i32*, i32** %3, align 8
  %41 = call i32* @curl_easy_duphandle(i32* %40)
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %76

45:                                               ; preds = %39
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @curl_easy_cleanup(i32* %46)
  %48 = load i32*, i32** %4, align 8
  store i32* %48, i32** %3, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @multi_init(i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @multi_add_handle(i32* %51, i32* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @multi_perform(i32* %54, i32* %7)
  %56 = call i32 (...) @abort_on_test_timeout()
  br label %57

57:                                               ; preds = %60, %45
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  store i32 -99, i32* %12, align 4
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 100000, i64* %62, align 8
  %63 = call i32 @FD_ZERO(i32* %9)
  %64 = call i32 @FD_ZERO(i32* %10)
  %65 = call i32 @FD_ZERO(i32* %11)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @multi_fdset(i32* %66, i32* %9, i32* %10, i32* %11, i32* %12)
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @select_test(i32 %69, i32* %9, i32* %10, i32* %11, %struct.timeval* %8)
  %71 = call i32 (...) @abort_on_test_timeout()
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @multi_perform(i32* %72, i32* %7)
  %74 = call i32 (...) @abort_on_test_timeout()
  br label %57

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75, %44, %38, %32
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @curl_multi_cleanup(i32* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @curl_easy_cleanup(i32* %79)
  %81 = call i32 (...) @curl_global_cleanup()
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32* @curl_easy_duphandle(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
