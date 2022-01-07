; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_domore_getsock.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_domore_getsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64*, i64*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@FTP_STOP = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i64 0, align 8
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@SECONDARYSOCKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i64*)* @ftp_domore_getsock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_domore_getsock(%struct.connectdata* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ftp_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.ftp_conn* %12, %struct.ftp_conn** %6, align 8
  %13 = load i64, i64* @FTP_STOP, align 8
  %14 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %15 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %87

18:                                               ; preds = %2
  %19 = call i32 @GETSOCK_READSOCK(i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %21 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @FIRSTSOCKET, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %67, %35
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %41 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %39
  %50 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %51 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 %56, i64* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = call i32 @GETSOCK_WRITESOCK(i32 %61)
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %49, %39
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %36

70:                                               ; preds = %36
  br label %85

71:                                               ; preds = %18
  %72 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %73 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @SECONDARYSOCKET, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %5, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  store i64 %77, i64* %79, align 8
  %80 = call i32 @GETSOCK_WRITESOCK(i32 1)
  %81 = call i32 @GETSOCK_READSOCK(i32 1)
  %82 = or i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %71, %70
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %94

87:                                               ; preds = %2
  %88 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %89 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %90, i32 0, i32 1
  %92 = load i64*, i64** %5, align 8
  %93 = call i32 @Curl_pp_getsock(i32* %91, i64* %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %87, %85
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @GETSOCK_READSOCK(i32) #1

declare dso_local i32 @GETSOCK_WRITESOCK(i32) #1

declare dso_local i32 @Curl_pp_getsock(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
