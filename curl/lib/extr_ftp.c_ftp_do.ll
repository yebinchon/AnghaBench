; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_do.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i8* }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@CURLWC_SKIP = common dso_local global i64 0, align 8
@CURLWC_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @ftp_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_do(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ftp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.ftp_conn* %11, %struct.ftp_conn** %7, align 8
  %12 = load i8*, i8** @FALSE, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** @FALSE, align 8
  %16 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %17 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %2
  %26 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %27 = call i64 @wc_statemach(%struct.connectdata* %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CURLWC_SKIP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %25
  %37 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %38 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CURLWC_DONE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36, %25
  %46 = load i64, i64* @CURLE_OK, align 8
  store i64 %46, i64* %3, align 8
  br label %66

47:                                               ; preds = %36
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %3, align 8
  br label %66

52:                                               ; preds = %47
  br label %61

53:                                               ; preds = %2
  %54 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %55 = call i64 @ftp_parse_url_path(%struct.connectdata* %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %3, align 8
  br label %66

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %52
  %62 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @ftp_regular_transfer(%struct.connectdata* %62, i32* %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %61, %58, %50, %45
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

declare dso_local i64 @wc_statemach(%struct.connectdata*) #1

declare dso_local i64 @ftp_parse_url_path(%struct.connectdata*) #1

declare dso_local i64 @ftp_regular_transfer(%struct.connectdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
