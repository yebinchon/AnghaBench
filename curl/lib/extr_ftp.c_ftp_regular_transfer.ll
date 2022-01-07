; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_regular_transfer.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_regular_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__, %struct.Curl_easy* }
%struct.TYPE_4__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @ftp_regular_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_regular_transfer(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.ftp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i64, i64* @CURLE_OK, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 1
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %8, align 8
  %15 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.ftp_conn* %17, %struct.ftp_conn** %9, align 8
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %19 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %22 = call i32 @Curl_pgrsSetUploadCounter(%struct.Curl_easy* %21, i32 0)
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %24 = call i32 @Curl_pgrsSetDownloadCounter(%struct.Curl_easy* %23, i32 0)
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %26 = call i32 @Curl_pgrsSetUploadSize(%struct.Curl_easy* %25, i32 -1)
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %28 = call i32 @Curl_pgrsSetDownloadSize(%struct.Curl_easy* %27, i32 -1)
  %29 = load i32, i32* @TRUE, align 4
  %30 = load %struct.ftp_conn*, %struct.ftp_conn** %9, align 8
  %31 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @ftp_perform(%struct.connectdata* %32, i32* %7, i32* %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %2
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @CURLE_OK, align 8
  store i64 %42, i64* %3, align 8
  br label %57

43:                                               ; preds = %37
  %44 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @ftp_dophase_done(%struct.connectdata* %44, i32 %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %3, align 8
  br label %57

51:                                               ; preds = %43
  br label %55

52:                                               ; preds = %2
  %53 = load %struct.ftp_conn*, %struct.ftp_conn** %9, align 8
  %54 = call i32 @freedirs(%struct.ftp_conn* %53)
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %55, %49, %41
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i32 @Curl_pgrsSetUploadCounter(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_pgrsSetDownloadCounter(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_pgrsSetUploadSize(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_pgrsSetDownloadSize(%struct.Curl_easy*, i32) #1

declare dso_local i64 @ftp_perform(%struct.connectdata*, i32*, i32*) #1

declare dso_local i64 @ftp_dophase_done(%struct.connectdata*, i32) #1

declare dso_local i32 @freedirs(%struct.ftp_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
