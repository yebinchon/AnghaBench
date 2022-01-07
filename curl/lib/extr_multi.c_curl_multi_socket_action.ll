; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_socket_action.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_socket_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i64 }

@CURLM_RECURSIVE_API_CALL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @curl_multi_socket_action(%struct.Curl_multi* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.Curl_multi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %12 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* @CURLM_RECURSIVE_API_CALL, align 8
  store i64 %16, i64* %5, align 8
  br label %32

17:                                               ; preds = %4
  %18 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @multi_socket(%struct.Curl_multi* %18, i32 %19, i32 %20, i32 %21, i32* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* @CURLM_OK, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %29 = call i32 @Curl_update_timer(%struct.Curl_multi* %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %30, %15
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

declare dso_local i64 @multi_socket(%struct.Curl_multi*, i32, i32, i32, i32*) #1

declare dso_local i32 @Curl_update_timer(%struct.Curl_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
