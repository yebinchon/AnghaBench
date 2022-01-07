; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform_authentication.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform_authentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.smtp_conn }
%struct.smtp_conn = type { i32, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@SMTP_STOP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SASL_INPROGRESS = common dso_local global i64 0, align 8
@SMTP_AUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"No known authentication mechanisms supported!\0A\00", align 1
@CURLE_LOGIN_DENIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @smtp_perform_authentication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smtp_perform_authentication(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.smtp_conn*, align 8
  %6 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %7 = load i64, i64* @CURLE_OK, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.smtp_conn* %10, %struct.smtp_conn** %5, align 8
  %11 = load %struct.smtp_conn*, %struct.smtp_conn** %5, align 8
  %12 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.smtp_conn*, %struct.smtp_conn** %5, align 8
  %17 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %16, i32 0, i32 0
  %18 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %19 = call i32 @Curl_sasl_can_authenticate(i32* %17, %struct.connectdata* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %23 = load i32, i32* @SMTP_STOP, align 4
  %24 = call i32 @state(%struct.connectdata* %22, i32 %23)
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %2, align 8
  br label %51

26:                                               ; preds = %15
  %27 = load %struct.smtp_conn*, %struct.smtp_conn** %5, align 8
  %28 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %27, i32 0, i32 0
  %29 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i64 @Curl_sasl_start(i32* %28, %struct.connectdata* %29, i32 %30, i64* %6)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @SASL_INPROGRESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %40 = load i32, i32* @SMTP_AUTH, align 4
  %41 = call i32 @state(%struct.connectdata* %39, i32 %40)
  br label %48

42:                                               ; preds = %34
  %43 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %44 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @infof(i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %47 = load i64, i64* @CURLE_LOGIN_DENIED, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %42, %38
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %21
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i32 @Curl_sasl_can_authenticate(i32*, %struct.connectdata*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @Curl_sasl_start(i32*, %struct.connectdata*, i32, i64*) #1

declare dso_local i32 @infof(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
