; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_auth_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_auth_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__, %struct.Curl_easy* }
%struct.TYPE_2__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i32, i32, i32 }
%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@POP3_STOP = common dso_local global i32 0, align 4
@POP3_TYPE_APOP = common dso_local global i32 0, align 4
@POP3_TYPE_CLEARTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Authentication cancelled\00", align 1
@CURLE_LOGIN_DENIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @pop3_state_auth_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_state_auth_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.pop3_conn*, align 8
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
  store %struct.pop3_conn* %17, %struct.pop3_conn** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %20 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %19, i32 0, i32 2
  %21 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @Curl_sasl_continue(i32* %20, %struct.connectdata* %21, i32 %22, i32* %10)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %66 [
    i32 129, label %28
    i32 128, label %32
  ]

28:                                               ; preds = %26
  %29 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %30 = load i32, i32* @POP3_STOP, align 4
  %31 = call i32 @state(%struct.connectdata* %29, i32 %30)
  br label %67

32:                                               ; preds = %26
  %33 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %34 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %37 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = load i32, i32* @POP3_TYPE_APOP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %45 = call i32 @pop3_perform_apop(%struct.connectdata* %44)
  store i32 %45, i32* %7, align 4
  br label %65

46:                                               ; preds = %32
  %47 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %48 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %51 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = load i32, i32* @POP3_TYPE_CLEARTEXT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %59 = call i32 @pop3_perform_user(%struct.connectdata* %58)
  store i32 %59, i32* %7, align 4
  br label %64

60:                                               ; preds = %46
  %61 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %62 = call i32 @failf(%struct.Curl_easy* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @CURLE_LOGIN_DENIED, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %43
  br label %67

66:                                               ; preds = %26
  br label %67

67:                                               ; preds = %66, %65, %28
  br label %68

68:                                               ; preds = %67, %3
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @Curl_sasl_continue(i32*, %struct.connectdata*, i32, i32*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @pop3_perform_apop(%struct.connectdata*) #1

declare dso_local i32 @pop3_perform_user(%struct.connectdata*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
