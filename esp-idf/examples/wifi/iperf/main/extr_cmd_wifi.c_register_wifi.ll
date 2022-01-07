; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/main/extr_cmd_wifi.c_register_wifi.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/main/extr_cmd_wifi.c_register_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8*, %struct.TYPE_8__*, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"<ssid>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SSID of AP\00", align 1
@sta_args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"<pass>\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"password of AP\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sta\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"WiFi is station mode, join specified soft-AP\00", align 1
@wifi_cmd_sta = common dso_local global i32 0, align 4
@__const.register_wifi.sta_cmd = private unnamed_addr constant %struct.TYPE_7__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0), %struct.TYPE_8__* @sta_args, i32* @wifi_cmd_sta, i32* null }, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"SSID of AP want to be scanned\00", align 1
@scan_args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"scan\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"WiFi is station mode, start scan ap\00", align 1
@wifi_cmd_scan = common dso_local global i32 0, align 4
@__const.register_wifi.scan_cmd = private unnamed_addr constant %struct.TYPE_7__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), %struct.TYPE_8__* @scan_args, i32* @wifi_cmd_scan, i32* null }, align 8
@ap_args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"AP mode, configure ssid and password\00", align 1
@wifi_cmd_ap = common dso_local global i32 0, align 4
@__const.register_wifi.ap_cmd = private unnamed_addr constant %struct.TYPE_7__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), %struct.TYPE_8__* @ap_args, i32* @wifi_cmd_ap, i32* null }, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"query WiFi info\00", align 1
@wifi_cmd_query = common dso_local global i32 0, align 4
@__const.register_wifi.query_cmd = private unnamed_addr constant %struct.TYPE_7__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), %struct.TYPE_8__* null, i32* @wifi_cmd_query, i32* null }, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"<ip>\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"run in client mode, connecting to <host>\00", align 1
@iperf_args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"run in server mode\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"use UDP rather than TCP\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"<port>\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"server port to listen on/connect to\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"<interval>\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"seconds between periodic bandwidth reports\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"<time>\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"time in seconds to transmit for (default 10 secs)\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"abort running iperf\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"iperf\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"iperf command\00", align 1
@wifi_cmd_iperf = common dso_local global i32 0, align 4
@__const.register_wifi.iperf_cmd = private unnamed_addr constant %struct.TYPE_7__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), %struct.TYPE_8__* @iperf_args, i32* @wifi_cmd_iperf, i32* null }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_wifi() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = call i8* @arg_str1(i32* null, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sta_args, i32 0, i32 9), align 8
  %7 = call i8* @arg_str0(i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sta_args, i32 0, i32 8), align 8
  %8 = call i8* @arg_end(i32 2)
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sta_args, i32 0, i32 0), align 8
  %9 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_7__* @__const.register_wifi.sta_cmd to i8*), i64 40, i1 false)
  %10 = call i32 @esp_console_cmd_register(%struct.TYPE_7__* %1)
  %11 = call i32 @ESP_ERROR_CHECK(i32 %10)
  %12 = call i8* @arg_str0(i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scan_args, i32 0, i32 9), align 8
  %13 = call i8* @arg_end(i32 1)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scan_args, i32 0, i32 0), align 8
  %14 = bitcast %struct.TYPE_7__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_7__* @__const.register_wifi.scan_cmd to i8*), i64 40, i1 false)
  %15 = call i8* @arg_str1(i32* null, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ap_args, i32 0, i32 9), align 8
  %16 = call i8* @arg_str0(i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ap_args, i32 0, i32 8), align 8
  %17 = call i8* @arg_end(i32 2)
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ap_args, i32 0, i32 0), align 8
  %18 = call i32 @esp_console_cmd_register(%struct.TYPE_7__* %2)
  %19 = call i32 @ESP_ERROR_CHECK(i32 %18)
  %20 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_7__* @__const.register_wifi.ap_cmd to i8*), i64 40, i1 false)
  %21 = call i32 @esp_console_cmd_register(%struct.TYPE_7__* %3)
  %22 = call i32 @ESP_ERROR_CHECK(i32 %21)
  %23 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_7__* @__const.register_wifi.query_cmd to i8*), i64 40, i1 false)
  %24 = call i32 @esp_console_cmd_register(%struct.TYPE_7__* %4)
  %25 = call i32 @ESP_ERROR_CHECK(i32 %24)
  %26 = call i8* @arg_str0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iperf_args, i32 0, i32 7), align 8
  %27 = call i8* @arg_lit0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iperf_args, i32 0, i32 6), align 8
  %28 = call i8* @arg_lit0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iperf_args, i32 0, i32 5), align 8
  %29 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0))
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iperf_args, i32 0, i32 4), align 8
  %30 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0))
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iperf_args, i32 0, i32 3), align 8
  %31 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0))
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iperf_args, i32 0, i32 2), align 8
  %32 = call i8* @arg_lit0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0))
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iperf_args, i32 0, i32 1), align 8
  %33 = call i8* @arg_end(i32 1)
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iperf_args, i32 0, i32 0), align 8
  %34 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.TYPE_7__* @__const.register_wifi.iperf_cmd to i8*), i64 40, i1 false)
  %35 = call i32 @esp_console_cmd_register(%struct.TYPE_7__* %5)
  %36 = call i32 @ESP_ERROR_CHECK(i32 %35)
  ret void
}

declare dso_local i8* @arg_str1(i32*, i32*, i8*, i8*) #1

declare dso_local i8* @arg_str0(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @arg_end(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_console_cmd_register(%struct.TYPE_7__*) #1

declare dso_local i8* @arg_lit0(i8*, i8*, i8*) #1

declare dso_local i8* @arg_int0(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
