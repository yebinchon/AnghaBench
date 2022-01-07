; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib502.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib502.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4

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
  %18 = load i32, i32* @CURLOPT_URL, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @easy_setopt(i32* %17, i32 %18, i8* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @multi_init(i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @multi_add_handle(i32* %23, i32* %24)
  br label %26

26:                                               ; preds = %35, %1
  store i32 -99, i32* %11, align 4
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 100000, i64* %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @multi_perform(i32* %29, i32* %6)
  %31 = call i32 (...) @abort_on_test_timeout()
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %45

35:                                               ; preds = %26
  %36 = call i32 @FD_ZERO(i32* %8)
  %37 = call i32 @FD_ZERO(i32* %9)
  %38 = call i32 @FD_ZERO(i32* %10)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @multi_fdset(i32* %39, i32* %8, i32* %9, i32* %10, i32* %11)
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @select_test(i32 %42, i32* %8, i32* %9, i32* %10, %struct.timeval* %7)
  %44 = call i32 (...) @abort_on_test_timeout()
  br label %26

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @curl_multi_remove_handle(i32* %47, i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @curl_multi_cleanup(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @curl_easy_cleanup(i32* %52)
  %54 = call i32 (...) @curl_global_cleanup()
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, i8*) #1

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
