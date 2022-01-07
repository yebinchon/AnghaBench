; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_easy_transfer.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_easy_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CURLM_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_multi*)* @easy_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @easy_transfer(%struct.Curl_multi* %0) #0 {
  %2 = alloca %struct.Curl_multi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %2, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @CURLM_OK, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @CURLE_OK, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %47, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %48

21:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  %22 = load %struct.Curl_multi*, %struct.Curl_multi** %2, align 8
  %23 = call i64 @curl_multi_poll(%struct.Curl_multi* %22, i32* null, i32 0, i32 1000, i32* null)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.Curl_multi*, %struct.Curl_multi** %2, align 8
  %28 = call i64 @curl_multi_perform(%struct.Curl_multi* %27, i32* %6)
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load %struct.Curl_multi*, %struct.Curl_multi** %2, align 8
  %37 = call %struct.TYPE_5__* @curl_multi_info_read(%struct.Curl_multi* %36, i32* %7)
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46, %32, %29
  br label %12

48:                                               ; preds = %19
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @CURLM_OUT_OF_MEMORY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @CURLE_BAD_FUNCTION_ARGUMENT, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %48
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @curl_multi_poll(%struct.Curl_multi*, i32*, i32, i32, i32*) #1

declare dso_local i64 @curl_multi_perform(%struct.Curl_multi*, i32*) #1

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(%struct.Curl_multi*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
