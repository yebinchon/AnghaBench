; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_multi_statemach.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_multi_statemach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@FTP_STOP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32*)* @ftp_multi_statemach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_multi_statemach(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ftp_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %8 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ftp_conn* %9, %struct.ftp_conn** %5, align 8
  %10 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %11 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %10, i32 0, i32 1
  %12 = load i32, i32* @FALSE, align 4
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @Curl_pp_statemach(i32* %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %16 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FTP_STOP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @TRUE, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @FALSE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @Curl_pp_statemach(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
