; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_stor_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_stor_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__, %struct.Curl_easy* }
%struct.TYPE_4__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i32, i32 }
%struct.Curl_easy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed FTP upload: %0d\00", align 1
@FTP_STOP = common dso_local global i32 0, align 4
@CURLE_UPLOAD_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Data conn was not available immediately\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @ftp_state_stor_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_stor_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ftp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @CURLE_OK, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 1
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  store %struct.Curl_easy* %15, %struct.Curl_easy** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 400
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @failf(%struct.Curl_easy* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %23 = load i32, i32* @FTP_STOP, align 4
  %24 = call i32 @state(%struct.connectdata* %22, i32 %23)
  %25 = load i32, i32* @CURLE_UPLOAD_FAILED, align 4
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %26
  %38 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %39 = load i32, i32* @FTP_STOP, align 4
  %40 = call i32 @state(%struct.connectdata* %38, i32 %39)
  %41 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %42 = call i32 @AllowServerConnect(%struct.connectdata* %41, i32* %10)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %64

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %52 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.ftp_conn* %53, %struct.ftp_conn** %11, align 8
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %55 = call i32 @infof(%struct.Curl_easy* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @TRUE, align 4
  %57 = load %struct.ftp_conn*, %struct.ftp_conn** %11, align 8
  %58 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %47
  %60 = load i32, i32* @CURLE_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %26
  %62 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %63 = call i32 @InitiateTransfer(%struct.connectdata* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %59, %45, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @AllowServerConnect(%struct.connectdata*, i32*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @InitiateTransfer(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
