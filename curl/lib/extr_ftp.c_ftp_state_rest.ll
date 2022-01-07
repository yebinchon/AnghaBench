; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_rest.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_rest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.FTP* }
%struct.FTP = type { i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@FTPTRANSFER_BODY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"REST %d\00", align 1
@FTP_REST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @ftp_state_rest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_rest(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.FTP*, align 8
  %5 = alloca %struct.ftp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %6 = load i32, i32* @CURLE_OK, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %8 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.FTP*, %struct.FTP** %11, align 8
  store %struct.FTP* %12, %struct.FTP** %4, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.ftp_conn* %15, %struct.ftp_conn** %5, align 8
  %16 = load %struct.FTP*, %struct.FTP** %4, align 8
  %17 = getelementptr inbounds %struct.FTP, %struct.FTP* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FTPTRANSFER_BODY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %23 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %28 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %29, i32 0, i32 0
  %31 = call i32 @PPSENDF(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %32 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %33 = load i32, i32* @FTP_REST, align 4
  %34 = call i32 @state(%struct.connectdata* %32, i32 %33)
  br label %38

35:                                               ; preds = %21, %1
  %36 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %37 = call i32 @ftp_state_prepare_transfer(%struct.connectdata* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @PPSENDF(i32*, i8*, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @ftp_state_prepare_transfer(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
