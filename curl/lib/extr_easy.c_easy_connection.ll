; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_easy_connection.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_easy_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.connectdata = type { i32 }

@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CONNECT_ONLY is required!\00", align 1
@CURLE_UNSUPPORTED_PROTOCOL = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to get recent socket\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i64*, %struct.connectdata**)* @easy_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @easy_connection(%struct.Curl_easy* %0, i64* %1, %struct.connectdata** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.connectdata**, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.connectdata** %2, %struct.connectdata*** %7, align 8
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %9 = icmp eq %struct.Curl_easy* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @CURLE_BAD_FUNCTION_ARGUMENT, align 4
  store i32 %11, i32* %4, align 4
  br label %37

12:                                               ; preds = %3
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %20 = call i32 @failf(%struct.Curl_easy* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @CURLE_UNSUPPORTED_PROTOCOL, align 4
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %12
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %24 = load %struct.connectdata**, %struct.connectdata*** %7, align 8
  %25 = call i64 @Curl_getconnectinfo(%struct.Curl_easy* %23, %struct.connectdata** %24)
  %26 = load i64*, i64** %6, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %33 = call i32 @failf(%struct.Curl_easy* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @CURLE_UNSUPPORTED_PROTOCOL, align 4
  store i32 %34, i32* %4, align 4
  br label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @CURLE_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %31, %18, %10
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @Curl_getconnectinfo(%struct.Curl_easy*, %struct.connectdata**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
