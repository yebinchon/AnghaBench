; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_state_servergreet_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_state_servergreet_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__, %struct.Curl_easy* }
%struct.TYPE_2__ = type { %struct.imap_conn }
%struct.imap_conn = type { i32 }
%struct.Curl_easy = type { i32 }

@IMAP_RESP_PREAUTH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"PREAUTH connection, already authenticated!\0A\00", align 1
@IMAP_RESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Got unexpected imap-server response\00", align 1
@CURLE_WEIRD_SERVER_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @imap_state_servergreet_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_state_servergreet_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.imap_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 1
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  store %struct.Curl_easy* %12, %struct.Curl_easy** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IMAP_RESP_PREAUTH, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.imap_conn* %20, %struct.imap_conn** %9, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = load %struct.imap_conn*, %struct.imap_conn** %9, align 8
  %23 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %25 = call i32 @infof(%struct.Curl_easy* %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %35

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IMAP_RESP_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %32 = call i32 @failf(%struct.Curl_easy* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @CURLE_WEIRD_SERVER_REPLY, align 4
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %37 = call i32 @imap_perform_capability(%struct.connectdata* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @imap_perform_capability(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
