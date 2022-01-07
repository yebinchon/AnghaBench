; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/simple_sniffer/main/extr_cmd_sniffer.c_register_sniffer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/simple_sniffer/main/extr_cmd_sniffer.c_register_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_5__*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<file>\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"name of the file storing the packets in pcap format\00", align 1
@sniffer_args = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"<wlan>\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"which interface to capture packet\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"<mgmt|data|ctrl|misc|mpdu|ampdu>\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"filter parameters\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"<channel>\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"communication channel to use\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"stop running sniffer\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"sniffer\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"Capture specific packet and store in pcap format\00", align 1
@do_sniffer_cmd = common dso_local global i32 0, align 4
@__const.register_sniffer.sniffer_cmd = private unnamed_addr constant %struct.TYPE_4__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0), %struct.TYPE_5__* @sniffer_args, i32* @do_sniffer_cmd, i32* null }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_sniffer() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i8* @arg_str0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sniffer_args, i32 0, i32 5), align 8
  %3 = call i8* @arg_str0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sniffer_args, i32 0, i32 4), align 8
  %4 = call i32 @arg_strn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sniffer_args, i32 0, i32 3), align 4
  %5 = call i32 @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sniffer_args, i32 0, i32 2), align 8
  %6 = call i32 @arg_lit0(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sniffer_args, i32 0, i32 1), align 4
  %7 = call i32 @arg_end(i32 1)
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sniffer_args, i32 0, i32 0), align 8
  %8 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_4__* @__const.register_sniffer.sniffer_cmd to i8*), i64 40, i1 false)
  %9 = call i32 @esp_console_cmd_register(%struct.TYPE_4__* %1)
  %10 = call i32 @ESP_ERROR_CHECK(i32 %9)
  %11 = call i32 (...) @create_wifi_filter_hashtable()
  ret void
}

declare dso_local i8* @arg_str0(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @arg_strn(i8*, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @arg_int0(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @arg_lit0(i32*, i8*, i8*) #1

declare dso_local i32 @arg_end(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_console_cmd_register(%struct.TYPE_4__*) #1

declare dso_local i32 @create_wifi_filter_hashtable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
