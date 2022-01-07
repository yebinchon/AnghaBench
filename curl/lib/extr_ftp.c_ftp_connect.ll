; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_connect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { %struct.pingpong }
%struct.pingpong = type { %struct.connectdata*, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"FTP default\00", align 1
@RESP_TIMEOUT = common dso_local global i32 0, align 4
@ftp_statemach_act = common dso_local global i32 0, align 4
@ftp_endofresp = common dso_local global i32 0, align 4
@PROTOPT_SSL = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i32 0, align 4
@FTP_WAIT220 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @ftp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_connect(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ftp_conn*, align 8
  %8 = alloca %struct.pingpong*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.ftp_conn* %11, %struct.ftp_conn** %7, align 8
  %12 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %13 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %12, i32 0, i32 0
  store %struct.pingpong* %13, %struct.pingpong** %8, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %17 = call i32 @connkeep(%struct.connectdata* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @RESP_TIMEOUT, align 4
  %19 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %20 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @ftp_statemach_act, align 4
  %22 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %23 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ftp_endofresp, align 4
  %25 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %26 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %28 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %29 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %28, i32 0, i32 0
  store %struct.connectdata* %27, %struct.connectdata** %29, align 8
  %30 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %31 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PROTOPT_SSL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %2
  %39 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %40 = load i32, i32* @FIRSTSOCKET, align 4
  %41 = call i64 @Curl_ssl_connect(%struct.connectdata* %39, i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %3, align 8
  br label %57

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %49 = call i32 @Curl_pp_init(%struct.pingpong* %48)
  %50 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %51 = load i32, i32* @FTP_WAIT220, align 4
  %52 = call i32 @state(%struct.connectdata* %50, i32 %51)
  %53 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @ftp_multi_statemach(%struct.connectdata* %53, i32* %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %47, %44
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i32 @connkeep(%struct.connectdata*, i8*) #1

declare dso_local i64 @Curl_ssl_connect(%struct.connectdata*, i32) #1

declare dso_local i32 @Curl_pp_init(%struct.pingpong*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @ftp_multi_statemach(%struct.connectdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
