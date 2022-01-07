; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_AllowServerConnect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_AllowServerConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Preparing for accepting server on data port\0A\00", align 1
@TIMER_STARTACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Accept timeout occurred while waiting server connect\00", align 1
@CURLE_FTP_ACCEPT_TIMEOUT = common dso_local global i64 0, align 8
@DEFAULT_ACCEPT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @AllowServerConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AllowServerConnect(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 0
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %6, align 8
  %12 = load i64, i64* @CURLE_OK, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %16 = call i32 @infof(%struct.Curl_easy* %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %18 = load i32, i32* @TIMER_STARTACCEPT, align 4
  %19 = call i32 @Curl_pgrsTime(%struct.Curl_easy* %17, i32 %18)
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %21 = call i64 @ftp_timeleft_accept(%struct.Curl_easy* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %26 = call i32 @failf(%struct.Curl_easy* %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i64, i64* @CURLE_FTP_ACCEPT_TIMEOUT, align 8
  store i64 %27, i64* %3, align 8
  br label %80

28:                                               ; preds = %2
  %29 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @ReceivedServerConnect(%struct.connectdata* %29, i32* %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %3, align 8
  br label %80

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %42 = call i64 @AcceptServerConnect(%struct.connectdata* %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %3, align 8
  br label %80

47:                                               ; preds = %40
  %48 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %49 = call i64 @InitiateTransfer(%struct.connectdata* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %3, align 8
  br label %80

54:                                               ; preds = %47
  br label %78

55:                                               ; preds = %36
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %63 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %69 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  br label %74

72:                                               ; preds = %60
  %73 = load i64, i64* @DEFAULT_ACCEPT_TIMEOUT, align 8
  br label %74

74:                                               ; preds = %72, %67
  %75 = phi i64 [ %71, %67 ], [ %73, %72 ]
  %76 = call i32 @Curl_expire(%struct.Curl_easy* %61, i64 %75, i32 0)
  br label %77

77:                                               ; preds = %74, %55
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i64, i64* %8, align 8
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %78, %52, %45, %34, %24
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @Curl_pgrsTime(%struct.Curl_easy*, i32) #1

declare dso_local i64 @ftp_timeleft_accept(%struct.Curl_easy*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @ReceivedServerConnect(%struct.connectdata*, i32*) #1

declare dso_local i64 @AcceptServerConnect(%struct.connectdata*) #1

declare dso_local i64 @InitiateTransfer(%struct.connectdata*) #1

declare dso_local i32 @Curl_expire(%struct.Curl_easy*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
