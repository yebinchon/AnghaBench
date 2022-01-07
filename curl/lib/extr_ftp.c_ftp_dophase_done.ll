; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_dophase_done.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_dophase_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_5__, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.FTP* }
%struct.FTP = type { i64 }
%struct.TYPE_7__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i8* }

@FTPTRANSFER_BODY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@CURLE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32)* @ftp_dophase_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_dophase_done(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.FTP*, align 8
  %7 = alloca %struct.ftp_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.FTP*, %struct.FTP** %14, align 8
  store %struct.FTP* %15, %struct.FTP** %6, align 8
  %16 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.ftp_conn* %18, %struct.ftp_conn** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %23 = call i64 @ftp_do_more(%struct.connectdata* %22, i32* %8)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %28 = call i32 @close_secondarysocket(%struct.connectdata* %27)
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %3, align 8
  br label %57

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.FTP*, %struct.FTP** %6, align 8
  %33 = getelementptr inbounds %struct.FTP, %struct.FTP* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FTPTRANSFER_BODY, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %39 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @Curl_setup_transfer(%struct.TYPE_8__* %40, i32 -1, i32 -1, i32 %41, i32 -1)
  br label %52

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** @TRUE, align 8
  %48 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %49 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %43
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i8*, i8** @TRUE, align 8
  %54 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %55 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* @CURLE_OK, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %52, %26
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i64 @ftp_do_more(%struct.connectdata*, i32*) #1

declare dso_local i32 @close_secondarysocket(%struct.connectdata*) #1

declare dso_local i32 @Curl_setup_transfer(%struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
