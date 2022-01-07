; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_connect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i32, i32, %struct.pingpong }
%struct.pingpong = type { %struct.connectdata*, i32, i32, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"POP3 default\00", align 1
@RESP_TIMEOUT = common dso_local global i32 0, align 4
@pop3_statemach_act = common dso_local global i32 0, align 4
@pop3_endofresp = common dso_local global i32 0, align 4
@POP3_TYPE_ANY = common dso_local global i32 0, align 4
@saslpop3 = common dso_local global i32 0, align 4
@POP3_SERVERGREET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @pop3_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pop3_connect(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pop3_conn*, align 8
  %8 = alloca %struct.pingpong*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @CURLE_OK, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.pop3_conn* %12, %struct.pop3_conn** %7, align 8
  %13 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %14 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %13, i32 0, i32 2
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
  %22 = load i32, i32* @pop3_statemach_act, align 4
  %23 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %24 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @pop3_endofresp, align 4
  %26 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %27 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %29 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %30 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %29, i32 0, i32 0
  store %struct.connectdata* %28, %struct.connectdata** %30, align 8
  %31 = load i32, i32* @POP3_TYPE_ANY, align 4
  %32 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %33 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %35 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %34, i32 0, i32 0
  %36 = call i32 @Curl_sasl_init(i32* %35, i32* @saslpop3)
  %37 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %38 = call i32 @Curl_pp_init(%struct.pingpong* %37)
  %39 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %40 = call i64 @pop3_parse_url_options(%struct.connectdata* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %3, align 8
  br label %53

45:                                               ; preds = %2
  %46 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %47 = load i32, i32* @POP3_SERVERGREET, align 4
  %48 = call i32 @state(%struct.connectdata* %46, i32 %47)
  %49 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @pop3_multi_statemach(%struct.connectdata* %49, i32* %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %45, %43
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i32 @connkeep(%struct.connectdata*, i8*) #1

declare dso_local i32 @Curl_sasl_init(i32*, i32*) #1

declare dso_local i32 @Curl_pp_init(%struct.pingpong*) #1

declare dso_local i64 @pop3_parse_url_options(%struct.connectdata*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @pop3_multi_statemach(%struct.connectdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
