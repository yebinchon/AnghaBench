; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform_ehlo.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform_ehlo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.smtp_conn }
%struct.smtp_conn = type { i32, i32, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@SASL_AUTH_NONE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"EHLO %s\00", align 1
@SMTP_EHLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @smtp_perform_ehlo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_perform_ehlo(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smtp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %5 = load i32, i32* @CURLE_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.smtp_conn* %8, %struct.smtp_conn** %4, align 8
  %9 = load i8*, i8** @SASL_AUTH_NONE, align 8
  %10 = load %struct.smtp_conn*, %struct.smtp_conn** %4, align 8
  %11 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %9, i8** %12, align 8
  %13 = load i8*, i8** @SASL_AUTH_NONE, align 8
  %14 = load %struct.smtp_conn*, %struct.smtp_conn** %4, align 8
  %15 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** @FALSE, align 8
  %18 = load %struct.smtp_conn*, %struct.smtp_conn** %4, align 8
  %19 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @FALSE, align 8
  %21 = load %struct.smtp_conn*, %struct.smtp_conn** %4, align 8
  %22 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.smtp_conn*, %struct.smtp_conn** %4, align 8
  %24 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %23, i32 0, i32 1
  %25 = load %struct.smtp_conn*, %struct.smtp_conn** %4, align 8
  %26 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @Curl_pp_sendf(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %33 = load i32, i32* @SMTP_EHLO, align 4
  %34 = call i32 @state(%struct.connectdata* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @Curl_pp_sendf(i32*, i8*, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
