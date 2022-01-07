; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_connect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.smtp_conn }
%struct.smtp_conn = type { i32, %struct.pingpong }
%struct.pingpong = type { %struct.connectdata*, i32, i32, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SMTP default\00", align 1
@RESP_TIMEOUT = common dso_local global i32 0, align 4
@smtp_statemach_act = common dso_local global i32 0, align 4
@smtp_endofresp = common dso_local global i32 0, align 4
@saslsmtp = common dso_local global i32 0, align 4
@SMTP_SERVERGREET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @smtp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smtp_connect(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.smtp_conn*, align 8
  %8 = alloca %struct.pingpong*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @CURLE_OK, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.smtp_conn* %12, %struct.smtp_conn** %7, align 8
  %13 = load %struct.smtp_conn*, %struct.smtp_conn** %7, align 8
  %14 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %13, i32 0, i32 1
  store %struct.pingpong* %14, %struct.pingpong** %8, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %18 = call i32 @connkeep(%struct.connectdata* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @RESP_TIMEOUT, align 4
  %20 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %21 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @smtp_statemach_act, align 4
  %23 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %24 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @smtp_endofresp, align 4
  %26 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %27 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %29 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %30 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %29, i32 0, i32 0
  store %struct.connectdata* %28, %struct.connectdata** %30, align 8
  %31 = load %struct.smtp_conn*, %struct.smtp_conn** %7, align 8
  %32 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %31, i32 0, i32 0
  %33 = call i32 @Curl_sasl_init(i32* %32, i32* @saslsmtp)
  %34 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %35 = call i32 @Curl_pp_init(%struct.pingpong* %34)
  %36 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %37 = call i64 @smtp_parse_url_options(%struct.connectdata* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %3, align 8
  br label %57

42:                                               ; preds = %2
  %43 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %44 = call i64 @smtp_parse_url_path(%struct.connectdata* %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  br label %57

49:                                               ; preds = %42
  %50 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %51 = load i32, i32* @SMTP_SERVERGREET, align 4
  %52 = call i32 @state(%struct.connectdata* %50, i32 %51)
  %53 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @smtp_multi_statemach(%struct.connectdata* %53, i32* %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %49, %47, %40
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i32 @connkeep(%struct.connectdata*, i8*) #1

declare dso_local i32 @Curl_sasl_init(i32*, i32*) #1

declare dso_local i32 @Curl_pp_init(%struct.pingpong*) #1

declare dso_local i64 @smtp_parse_url_options(%struct.connectdata*) #1

declare dso_local i64 @smtp_parse_url_path(%struct.connectdata*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @smtp_multi_statemach(%struct.connectdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
