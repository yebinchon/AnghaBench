; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib560.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib560.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYHOST = common dso_local global i32 0, align 4

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
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @easy_init(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @CURLOPT_URL, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (i32*, i32, ...) @easy_setopt(i32* %15, i32 %16, i8* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @CURLOPT_HEADER, align 4
  %21 = call i32 (i32*, i32, ...) @easy_setopt(i32* %19, i32 %20, i64 1)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %24 = call i32 (i32*, i32, ...) @easy_setopt(i32* %22, i32 %23, i64 0)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %27 = call i32 (i32*, i32, ...) @easy_setopt(i32* %25, i32 %26, i64 0)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @multi_init(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @multi_add_handle(i32* %30, i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @multi_perform(i32* %33, i32* %6)
  %35 = call i32 (...) @abort_on_test_timeout()
  br label %36

36:                                               ; preds = %39, %1
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  store i32 -99, i32* %11, align 4
  %40 = call i32 @FD_ZERO(i32* %8)
  %41 = call i32 @FD_ZERO(i32* %9)
  %42 = call i32 @FD_ZERO(i32* %10)
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @multi_fdset(i32* %45, i32* %8, i32* %9, i32* %10, i32* %11)
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @select_test(i32 %48, i32* %8, i32* %9, i32* %10, %struct.timeval* %7)
  %50 = call i32 (...) @abort_on_test_timeout()
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @multi_perform(i32* %51, i32* %6)
  %53 = call i32 (...) @abort_on_test_timeout()
  br label %36

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @curl_multi_cleanup(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @curl_easy_cleanup(i32* %58)
  %60 = call i32 (...) @curl_global_cleanup()
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
