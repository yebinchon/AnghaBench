; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1538.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1538.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i64 0, align 8
@CURL_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"e%d: %s\0A\00", align 1
@CURLM_CALL_MULTI_PERFORM = common dso_local global i64 0, align 8
@CURLM_LAST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"m%d: %s\0A\00", align 1
@CURLSHE_OK = common dso_local global i64 0, align 8
@CURLSHE_LAST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"s%d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = load i64, i64* @INT_MAX, align 8
  %9 = call i8* @curl_easy_strerror(i64 %8)
  %10 = load i64, i64* @INT_MAX, align 8
  %11 = call i8* @curl_multi_strerror(i64 %10)
  %12 = load i64, i64* @INT_MAX, align 8
  %13 = call i8* @curl_share_strerror(i64 %12)
  %14 = load i64, i64* @INT_MAX, align 8
  %15 = sub nsw i64 0, %14
  %16 = call i8* @curl_easy_strerror(i64 %15)
  %17 = load i64, i64* @INT_MAX, align 8
  %18 = sub nsw i64 0, %17
  %19 = call i8* @curl_multi_strerror(i64 %18)
  %20 = load i64, i64* @INT_MAX, align 8
  %21 = sub nsw i64 0, %20
  %22 = call i8* @curl_share_strerror(i64 %21)
  %23 = load i64, i64* @CURLE_OK, align 8
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %34, %1
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @CURL_LAST, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = call i8* @curl_easy_strerror(i64 %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %24

37:                                               ; preds = %24
  %38 = load i64, i64* @CURLM_CALL_MULTI_PERFORM, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %49, %37
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @CURLM_LAST, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64, i64* %5, align 8
  %47 = call i8* @curl_multi_strerror(i64 %46)
  %48 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %5, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %39

52:                                               ; preds = %39
  %53 = load i64, i64* @CURLSHE_OK, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %64, %52
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @CURLSHE_LAST, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* %6, align 8
  %62 = call i8* @curl_share_strerror(i64 %61)
  %63 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* %62)
  br label %64

64:                                               ; preds = %58
  %65 = load i64, i64* %6, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %54

67:                                               ; preds = %54
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i8* @curl_multi_strerror(i64) #1

declare dso_local i8* @curl_share_strerror(i64) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
