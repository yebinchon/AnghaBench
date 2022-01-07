; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1511.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1511.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_TIMECONDITION = common dso_local global i32 0, align 4
@CURL_TIMECOND_IFMODSINCE = common dso_local global i64 0, align 8
@CURLOPT_TIMEVALUE = common dso_local global i32 0, align 4
@CURLINFO_CONDITION_UNMET = common dso_local global i32 0, align 4
@TEST_ERR_FAILURE = common dso_local global i32 0, align 4
@TEST_ERR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %7 = call i32 @global_init(i32 %6)
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @easy_init(i32* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @CURLOPT_URL, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 (i32*, i32, ...) @easy_setopt(i32* %10, i32 %11, i8* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @CURLOPT_HEADER, align 4
  %16 = call i32 (i32*, i32, ...) @easy_setopt(i32* %14, i32 %15, i64 1)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @CURLOPT_TIMECONDITION, align 4
  %19 = load i64, i64* @CURL_TIMECOND_IFMODSINCE, align 8
  %20 = call i32 (i32*, i32, ...) @easy_setopt(i32* %17, i32 %18, i64 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @CURLOPT_TIMEVALUE, align 4
  %23 = call i32 (i32*, i32, ...) @easy_setopt(i32* %21, i32 %22, i64 1566210680)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @curl_easy_perform(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %56

29:                                               ; preds = %1
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @CURLINFO_CONDITION_UNMET, align 4
  %32 = call i32 @curl_easy_getinfo(i32* %30, i32 %31, i64* %3)
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @TEST_ERR_FAILURE, align 4
  store i32 %36, i32* %5, align 4
  br label %56

37:                                               ; preds = %29
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @CURLOPT_TIMEVALUE, align 4
  %40 = call i32 (i32*, i32, ...) @easy_setopt(i32* %38, i32 %39, i64 1)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @curl_easy_perform(i32* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %56

46:                                               ; preds = %37
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @CURLINFO_CONDITION_UNMET, align 4
  %49 = call i32 @curl_easy_getinfo(i32* %47, i32 %48, i64* %3)
  %50 = load i64, i64* %3, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @TEST_ERR_FAILURE, align 4
  store i32 %53, i32* %5, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @TEST_ERR_SUCCESS, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %52, %45, %35, %28
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @curl_easy_cleanup(i32* %57)
  %59 = call i32 (...) @curl_global_cleanup()
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, i64*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
