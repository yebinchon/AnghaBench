; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_state_append_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_state_append_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_UPLOAD_FAILED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i32 0, align 4
@IMAP_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @imap_state_append_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_state_append_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
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
  %15 = icmp ne i32 %14, 43
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @CURLE_UPLOAD_FAILED, align 4
  store i32 %17, i32* %7, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Curl_pgrsSetUploadSize(%struct.Curl_easy* %19, i32 %23)
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32, i32* @FIRSTSOCKET, align 4
  %28 = call i32 @Curl_setup_transfer(%struct.Curl_easy* %25, i32 -1, i32 -1, i32 %26, i32 %27)
  %29 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %30 = load i32, i32* @IMAP_STOP, align 4
  %31 = call i32 @state(%struct.connectdata* %29, i32 %30)
  br label %32

32:                                               ; preds = %18, %16
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @Curl_pgrsSetUploadSize(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_setup_transfer(%struct.Curl_easy*, i32, i32, i32, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
