; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_content_encoding.c_client_unencode_write.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_content_encoding.c_client_unencode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.SingleRequest }
%struct.SingleRequest = type { i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@CLIENTWRITE_BODY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32*, i8*, i64)* @client_unencode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_unencode_write(%struct.connectdata* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Curl_easy*, align 8
  %11 = alloca %struct.SingleRequest*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %10, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 0
  store %struct.SingleRequest* %16, %struct.SingleRequest** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %22 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %4
  %26 = load i32, i32* @CURLE_OK, align 4
  store i32 %26, i32* %5, align 4
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %29 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @Curl_client_write(%struct.connectdata* %28, i32 %29, i8* %30, i64 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %25
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @Curl_client_write(%struct.connectdata*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
