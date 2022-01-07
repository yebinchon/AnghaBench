; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_state_auth_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_state_auth_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__, %struct.Curl_easy* }
%struct.TYPE_2__ = type { %struct.imap_conn }
%struct.imap_conn = type { i32, i32, i32 }
%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@IMAP_STOP = common dso_local global i32 0, align 4
@IMAP_TYPE_CLEARTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Authentication cancelled\00", align 1
@CURLE_LOGIN_DENIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @imap_state_auth_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_state_auth_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.imap_conn*, align 8
  %10 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @CURLE_OK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 1
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %8, align 8
  %15 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.imap_conn* %17, %struct.imap_conn** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.imap_conn*, %struct.imap_conn** %9, align 8
  %20 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %19, i32 0, i32 2
  %21 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @Curl_sasl_continue(i32* %20, %struct.connectdata* %21, i32 %22, i32* %10)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %52 [
    i32 129, label %28
    i32 128, label %32
  ]

28:                                               ; preds = %26
  %29 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %30 = load i32, i32* @IMAP_STOP, align 4
  %31 = call i32 @state(%struct.connectdata* %29, i32 %30)
  br label %53

32:                                               ; preds = %26
  %33 = load %struct.imap_conn*, %struct.imap_conn** %9, align 8
  %34 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.imap_conn*, %struct.imap_conn** %9, align 8
  %39 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IMAP_TYPE_CLEARTEXT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %46 = call i32 @imap_perform_login(%struct.connectdata* %45)
  store i32 %46, i32* %7, align 4
  br label %51

47:                                               ; preds = %37, %32
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %49 = call i32 @failf(%struct.Curl_easy* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @CURLE_LOGIN_DENIED, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %44
  br label %53

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52, %51, %28
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @Curl_sasl_continue(i32*, %struct.connectdata*, i32, i32*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @imap_perform_login(%struct.connectdata*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
