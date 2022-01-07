; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/smart_config/main/extr_smartconfig_main.c_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/smart_config/main/extr_smartconfig_main.c_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32* }

@WIFI_EVENT = common dso_local global i64 0, align 8
@WIFI_EVENT_STA_START = common dso_local global i64 0, align 8
@smartconfig_example_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"smartconfig_example_task\00", align 1
@WIFI_EVENT_STA_DISCONNECTED = common dso_local global i64 0, align 8
@s_wifi_event_group = common dso_local global i32 0, align 4
@CONNECTED_BIT = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i64 0, align 8
@IP_EVENT_STA_GOT_IP = common dso_local global i64 0, align 8
@SC_EVENT = common dso_local global i64 0, align 8
@SC_EVENT_SCAN_DONE = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Scan done\00", align 1
@SC_EVENT_FOUND_CHANNEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Found channel\00", align 1
@SC_EVENT_GOT_SSID_PSWD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Got SSID and password\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SSID:%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"PASSWORD:%s\00", align 1
@ESP_IF_WIFI_STA = common dso_local global i32 0, align 4
@SC_EVENT_SEND_ACK_DONE = common dso_local global i64 0, align 8
@ESPTOUCH_DONE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i8*)* @event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_handler(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca [33 x i32], align 16
  %12 = alloca [65 x i32], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @WIFI_EVENT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @WIFI_EVENT_STA_START, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @smartconfig_example_task, align 4
  %22 = call i32 @xTaskCreate(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 4096, i32* null, i32 3, i32* null)
  br label %159

23:                                               ; preds = %16, %4
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @WIFI_EVENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @WIFI_EVENT_STA_DISCONNECTED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = call i32 (...) @esp_wifi_connect()
  %33 = load i32, i32* @s_wifi_event_group, align 4
  %34 = load i32, i32* @CONNECTED_BIT, align 4
  %35 = call i32 @xEventGroupClearBits(i32 %33, i32 %34)
  br label %158

36:                                               ; preds = %27, %23
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @IP_EVENT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @IP_EVENT_STA_GOT_IP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @s_wifi_event_group, align 4
  %46 = load i32, i32* @CONNECTED_BIT, align 4
  %47 = call i32 @xEventGroupSetBits(i32 %45, i32 %46)
  br label %157

48:                                               ; preds = %40, %36
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @SC_EVENT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @SC_EVENT_SCAN_DONE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @TAG, align 4
  %58 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %156

59:                                               ; preds = %52, %48
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @SC_EVENT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @SC_EVENT_FOUND_CHANNEL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @TAG, align 4
  %69 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %155

70:                                               ; preds = %63, %59
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @SC_EVENT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %141

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @SC_EVENT_GOT_SSID_PSWD, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %141

78:                                               ; preds = %74
  %79 = load i32, i32* @TAG, align 4
  %80 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i8*, i8** %8, align 8
  %82 = bitcast i8* %81 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %9, align 8
  %83 = bitcast [33 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 0, i64 132, i1 false)
  %84 = bitcast [65 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %84, i8 0, i64 260, i1 false)
  %85 = call i32 @bzero(%struct.TYPE_7__* %10, i32 32)
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memcpy(i32* %88, i32 %91, i32 8)
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(i32* %95, i32 %98, i32 8)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %117

109:                                              ; preds = %78
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @memcpy(i32* %112, i32 %115, i32 8)
  br label %117

117:                                              ; preds = %109, %78
  %118 = getelementptr inbounds [33 x i32], [33 x i32]* %11, i64 0, i64 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memcpy(i32* %118, i32 %121, i32 4)
  %123 = getelementptr inbounds [65 x i32], [65 x i32]* %12, i64 0, i64 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memcpy(i32* %123, i32 %126, i32 4)
  %128 = load i32, i32* @TAG, align 4
  %129 = getelementptr inbounds [33 x i32], [33 x i32]* %11, i64 0, i64 0
  %130 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %129)
  %131 = load i32, i32* @TAG, align 4
  %132 = getelementptr inbounds [65 x i32], [65 x i32]* %12, i64 0, i64 0
  %133 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %132)
  %134 = call i32 (...) @esp_wifi_disconnect()
  %135 = call i32 @ESP_ERROR_CHECK(i32 %134)
  %136 = load i32, i32* @ESP_IF_WIFI_STA, align 4
  %137 = call i32 @esp_wifi_set_config(i32 %136, %struct.TYPE_7__* %10)
  %138 = call i32 @ESP_ERROR_CHECK(i32 %137)
  %139 = call i32 (...) @esp_wifi_connect()
  %140 = call i32 @ESP_ERROR_CHECK(i32 %139)
  br label %154

141:                                              ; preds = %74, %70
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* @SC_EVENT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* @SC_EVENT_SEND_ACK_DONE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* @s_wifi_event_group, align 4
  %151 = load i32, i32* @ESPTOUCH_DONE_BIT, align 4
  %152 = call i32 @xEventGroupSetBits(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %145, %141
  br label %154

154:                                              ; preds = %153, %117
  br label %155

155:                                              ; preds = %154, %67
  br label %156

156:                                              ; preds = %155, %56
  br label %157

157:                                              ; preds = %156, %44
  br label %158

158:                                              ; preds = %157, %31
  br label %159

159:                                              ; preds = %158, %20
  ret void
}

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @esp_wifi_connect(...) #1

declare dso_local i32 @xEventGroupClearBits(i32, i32) #1

declare dso_local i32 @xEventGroupSetBits(i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_wifi_disconnect(...) #1

declare dso_local i32 @esp_wifi_set_config(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
