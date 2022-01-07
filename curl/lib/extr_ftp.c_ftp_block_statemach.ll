; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_block_statemach.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_block_statemach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i64, %struct.pingpong }
%struct.pingpong = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FTP_STOP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @ftp_block_statemach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_block_statemach(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca %struct.ftp_conn*, align 8
  %4 = alloca %struct.pingpong*, align 8
  %5 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ftp_conn* %8, %struct.ftp_conn** %3, align 8
  %9 = load %struct.ftp_conn*, %struct.ftp_conn** %3, align 8
  %10 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %9, i32 0, i32 1
  store %struct.pingpong* %10, %struct.pingpong** %4, align 8
  %11 = load i64, i64* @CURLE_OK, align 8
  store i64 %11, i64* %5, align 8
  br label %12

12:                                               ; preds = %26, %1
  %13 = load %struct.ftp_conn*, %struct.ftp_conn** %3, align 8
  %14 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FTP_STOP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.pingpong*, %struct.pingpong** %4, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i64 @Curl_pp_statemach(%struct.pingpong* %19, i32 %20, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %27

26:                                               ; preds = %18
  br label %12

27:                                               ; preds = %25, %12
  %28 = load i64, i64* %5, align 8
  ret i64 %28
}

declare dso_local i64 @Curl_pp_statemach(%struct.pingpong*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
