; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_InitiateTransfer.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_InitiateTransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_10__, i32*, %struct.TYPE_6__, %struct.Curl_easy* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.Curl_easy = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Doing the SSL/TLS handshake on the data stream\0A\00", align 1
@SECONDARYSOCKET = common dso_local global i64 0, align 8
@FTP_STOR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FTP_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @InitiateTransfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @InitiateTransfer(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 3
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  store %struct.Curl_easy* %8, %struct.Curl_easy** %4, align 8
  %9 = load i64, i64* @CURLE_OK, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %17 = call i32 @infof(%struct.Curl_easy* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %19 = load i64, i64* @SECONDARYSOCKET, align 8
  %20 = call i64 @Curl_ssl_connect(%struct.connectdata* %18, i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %2, align 8
  br label %74

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %28 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FTP_STOR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %37 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Curl_pgrsSetUploadSize(%struct.Curl_easy* %35, i32 %39)
  %41 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %42 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @SECONDARYSOCKET, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @Curl_sndbufset(i32 %46)
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = load i64, i64* @SECONDARYSOCKET, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @Curl_setup_transfer(%struct.Curl_easy* %48, i64 -1, i32 -1, i32 %49, i32 %51)
  br label %63

53:                                               ; preds = %26
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %55 = load i64, i64* @SECONDARYSOCKET, align 8
  %56 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %57 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @Curl_setup_transfer(%struct.Curl_easy* %54, i64 %55, i32 %60, i32 %61, i32 -1)
  br label %63

63:                                               ; preds = %53, %34
  %64 = load i32, i32* @TRUE, align 4
  %65 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %66 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 4
  %70 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %71 = load i32, i32* @FTP_STOP, align 4
  %72 = call i32 @state(%struct.connectdata* %70, i32 %71)
  %73 = load i64, i64* @CURLE_OK, align 8
  store i64 %73, i64* %2, align 8
  br label %74

74:                                               ; preds = %63, %23
  %75 = load i64, i64* %2, align 8
  ret i64 %75
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @Curl_ssl_connect(%struct.connectdata*, i64) #1

declare dso_local i32 @Curl_pgrsSetUploadSize(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_sndbufset(i32) #1

declare dso_local i32 @Curl_setup_transfer(%struct.Curl_easy*, i64, i32, i32, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
