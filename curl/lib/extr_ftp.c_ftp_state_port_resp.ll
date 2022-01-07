; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_port_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_port_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.Curl_easy* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i32 }
%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@EPRT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"disabling EPRT usage\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Failed to do PORT\00", align 1
@CURLE_FTP_PORT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Connect data stream actively\0A\00", align 1
@FTP_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32)* @ftp_state_port_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_port_resp(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.ftp_conn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 2
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %5, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ftp_conn* %14, %struct.ftp_conn** %6, align 8
  %15 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %16 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* @CURLE_OK, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 100
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %49

23:                                               ; preds = %2
  %24 = load i64, i64* @EPRT, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %29 = call i32 @infof(%struct.Curl_easy* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @FALSE, align 4
  %31 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %32 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @DONE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %42 = call i32 @failf(%struct.Curl_easy* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @CURLE_FTP_PORT_FAILED, align 4
  store i32 %43, i32* %8, align 4
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @ftp_state_use_port(%struct.connectdata* %45, i64 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %58

49:                                               ; preds = %2
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %51 = call i32 @infof(%struct.Curl_easy* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %53 = load i32, i32* @FTP_STOP, align 4
  %54 = call i32 @state(%struct.connectdata* %52, i32 %53)
  %55 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @ftp_dophase_done(%struct.connectdata* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %49, %48
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @ftp_state_use_port(%struct.connectdata*, i64) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @ftp_dophase_done(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
