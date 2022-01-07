; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_acct_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_acct_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ACCT rejected by server: %03d\00", align 1
@CURLE_FTP_WEIRD_PASS_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32)* @ftp_state_acct_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_acct_resp(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @CURLE_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 0
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  store %struct.Curl_easy* %10, %struct.Curl_easy** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 230
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @failf(%struct.Curl_easy* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @CURLE_FTP_WEIRD_PASS_REPLY, align 4
  store i32 %17, i32* %5, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %20 = call i32 @ftp_state_loggedin(%struct.connectdata* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @ftp_state_loggedin(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
