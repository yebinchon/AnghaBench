; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_socket_all.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_socket_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i64 }

@CURLM_RECURSIVE_API_CALL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @curl_multi_socket_all(%struct.Curl_multi* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.Curl_multi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %8 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @CURLM_RECURSIVE_API_CALL, align 8
  store i64 %12, i64* %3, align 8
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %15 = load i32, i32* @TRUE, align 4
  %16 = load i32, i32* @CURL_SOCKET_BAD, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @multi_socket(%struct.Curl_multi* %14, i32 %15, i32 %16, i32 0, i32* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* @CURLM_OK, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %24 = call i32 @Curl_update_timer(%struct.Curl_multi* %23)
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %25, %11
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @multi_socket(%struct.Curl_multi*, i32, i32, i32, i32*) #1

declare dso_local i32 @Curl_update_timer(%struct.Curl_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
