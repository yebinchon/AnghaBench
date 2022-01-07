; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_state_rcpt_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_state_rcpt_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_7__, %struct.Curl_easy* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.SMTP* }
%struct.SMTP = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"RCPT failed: %d\00", align 1
@CURLE_SEND_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@SMTP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @smtp_state_rcpt_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_state_rcpt_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.SMTP*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @CURLE_OK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 1
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  store %struct.Curl_easy* %13, %struct.Curl_easy** %8, align 8
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.SMTP*, %struct.SMTP** %16, align 8
  store %struct.SMTP* %17, %struct.SMTP** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 100
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @failf(%struct.Curl_easy* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @CURLE_SEND_ERROR, align 4
  store i32 %26, i32* %7, align 4
  br label %56

27:                                               ; preds = %3
  %28 = load %struct.SMTP*, %struct.SMTP** %9, align 8
  %29 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.SMTP*, %struct.SMTP** %9, align 8
  %34 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %33, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %34, align 8
  %35 = load %struct.SMTP*, %struct.SMTP** %9, align 8
  %36 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %41 = call i32 @smtp_perform_rcpt_to(%struct.connectdata* %40)
  store i32 %41, i32* %7, align 4
  br label %55

42:                                               ; preds = %27
  %43 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %44 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @Curl_pp_sendf(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %52 = load i32, i32* @SMTP_DATA, align 4
  %53 = call i32 @state(%struct.connectdata* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %42
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @smtp_perform_rcpt_to(%struct.connectdata*) #1

declare dso_local i32 @Curl_pp_sendf(i32*, i8*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
