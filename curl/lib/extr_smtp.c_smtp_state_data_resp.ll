; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_state_data_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_state_data_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DATA failed: %d\00", align 1
@CURLE_SEND_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i32 0, align 4
@SMTP_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @smtp_state_data_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_state_data_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @CURLE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  store %struct.Curl_easy* %12, %struct.Curl_easy** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 354
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @failf(%struct.Curl_easy* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @CURLE_SEND_ERROR, align 4
  store i32 %20, i32* %7, align 4
  br label %35

21:                                               ; preds = %3
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @Curl_pgrsSetUploadSize(%struct.Curl_easy* %22, i32 %26)
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* @FIRSTSOCKET, align 4
  %31 = call i32 @Curl_setup_transfer(%struct.Curl_easy* %28, i32 -1, i32 -1, i32 %29, i32 %30)
  %32 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %33 = load i32, i32* @SMTP_STOP, align 4
  %34 = call i32 @state(%struct.connectdata* %32, i32 %33)
  br label %35

35:                                               ; preds = %21, %16
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @Curl_pgrsSetUploadSize(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_setup_transfer(%struct.Curl_easy*, i32, i32, i32, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
