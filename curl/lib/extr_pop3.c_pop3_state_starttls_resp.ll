; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_starttls_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_starttls_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@CURLUSESSL_TRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"STARTTLS denied\00", align 1
@CURLE_USE_SSL_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @pop3_state_starttls_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_state_starttls_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
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
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CURLUSESSL_TRY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %25 = call i32 @failf(%struct.Curl_easy* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @CURLE_USE_SSL_FAILED, align 4
  store i32 %26, i32* %7, align 4
  br label %30

27:                                               ; preds = %16
  %28 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %29 = call i32 @pop3_perform_authentication(%struct.connectdata* %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %23
  br label %34

31:                                               ; preds = %3
  %32 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %33 = call i32 @pop3_perform_upgrade_tls(%struct.connectdata* %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %30
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @pop3_perform_authentication(%struct.connectdata*) #1

declare dso_local i32 @pop3_perform_upgrade_tls(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
