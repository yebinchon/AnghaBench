; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform_capa.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@SASL_AUTH_NONE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"CAPA\00", align 1
@POP3_CAPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @pop3_perform_capa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_perform_capa(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pop3_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %5 = load i32, i32* @CURLE_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.pop3_conn* %8, %struct.pop3_conn** %4, align 8
  %9 = load i8*, i8** @SASL_AUTH_NONE, align 8
  %10 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %11 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %9, i8** %12, align 8
  %13 = load i8*, i8** @SASL_AUTH_NONE, align 8
  %14 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %15 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %19 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %21 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %20, i32 0, i32 0
  %22 = call i32 @Curl_pp_sendf(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %27 = load i32, i32* @POP3_CAPA, align 4
  %28 = call i32 @state(%struct.connectdata* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @Curl_pp_sendf(i32*, i8*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
