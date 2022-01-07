; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_mdtm.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_mdtm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__, %struct.Curl_easy* }
%struct.TYPE_3__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i64, i32 }
%struct.Curl_easy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"MDTM %s\00", align 1
@FTP_MDTM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @ftp_state_mdtm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_mdtm(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.ftp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %6 = load i32, i32* @CURLE_OK, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %8 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %7, i32 0, i32 1
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  store %struct.Curl_easy* %9, %struct.Curl_easy** %4, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ftp_conn* %12, %struct.ftp_conn** %5, align 8
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %18, %1
  %25 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %26 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %31 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %30, i32 0, i32 1
  %32 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %33 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @PPSENDF(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %37 = load i32, i32* @FTP_MDTM, align 4
  %38 = call i32 @state(%struct.connectdata* %36, i32 %37)
  br label %42

39:                                               ; preds = %24, %18
  %40 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %41 = call i32 @ftp_state_type(%struct.connectdata* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %29
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @PPSENDF(i32*, i8*, i64) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @ftp_state_type(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
