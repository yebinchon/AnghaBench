; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib512.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib512.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32 99, i32* %4, align 4
  %7 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %8 = call i64 @curl_global_init(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @CURLE_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %1
  %13 = call i32* (...) @curl_easy_init()
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %19 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %17, i32 %18, i64 1)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @CURLOPT_HEADER, align 4
  %22 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %20, i32 %21, i64 1)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @curl_easy_duphandle(i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %16
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @CURLOPT_URL, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %28, i32 %29, i8* %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @CURLE_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @curl_easy_perform(i32* %36)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @CURLE_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %43

42:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %45

44:                                               ; preds = %27
  store i32 2, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @curl_easy_cleanup(i32* %46)
  br label %49

48:                                               ; preds = %16
  store i32 3, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @curl_easy_cleanup(i32* %50)
  br label %53

52:                                               ; preds = %12
  store i32 4, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = call i32 (...) @curl_global_cleanup()
  br label %56

55:                                               ; preds = %1
  store i32 5, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %53
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i64 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32* @curl_easy_duphandle(i32*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
