; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_regular_transfer.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_regular_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @pop3_regular_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pop3_regular_transfer(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  store %struct.Curl_easy* %12, %struct.Curl_easy** %7, align 8
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %17 = call i32 @Curl_pgrsSetUploadCounter(%struct.Curl_easy* %16, i32 0)
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %19 = call i32 @Curl_pgrsSetDownloadCounter(%struct.Curl_easy* %18, i32 0)
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %21 = call i32 @Curl_pgrsSetUploadSize(%struct.Curl_easy* %20, i32 -1)
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %23 = call i32 @Curl_pgrsSetDownloadSize(%struct.Curl_easy* %22, i32 -1)
  %24 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @pop3_perform(%struct.connectdata* %24, i32* %6, i32* %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @pop3_dophase_done(%struct.connectdata* %34, i32 %35)
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %33, %29, %2
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local i32 @Curl_pgrsSetUploadCounter(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_pgrsSetDownloadCounter(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_pgrsSetUploadSize(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_pgrsSetDownloadSize(%struct.Curl_easy*, i32) #1

declare dso_local i64 @pop3_perform(%struct.connectdata*, i32*, i32*) #1

declare dso_local i64 @pop3_dophase_done(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
