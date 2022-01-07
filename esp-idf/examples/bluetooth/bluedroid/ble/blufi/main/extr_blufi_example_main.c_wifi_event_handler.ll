; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/blufi/main/extr_blufi_example_main.c_wifi_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/blufi/main/extr_blufi_example_main.c_wifi_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@gl_sta_connected = common dso_local global i32 0, align 4
@gl_sta_bssid = common dso_local global i32 0, align 4
@gl_sta_ssid = common dso_local global i32 0, align 4
@gl_sta_ssid_len = common dso_local global i32 0, align 4
@wifi_event_group = common dso_local global i32 0, align 4
@CONNECTED_BIT = common dso_local global i32 0, align 4
@ESP_BLUFI_STA_CONN_SUCCESS = common dso_local global i32 0, align 4
@ESP_BLUFI_STA_CONN_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Nothing AP found\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"malloc error, ap_list is NULL\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"malloc error, blufi_ap_list is NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @wifi_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_event_handler(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %138 [
    i32 128, label %16
    i32 130, label %18
    i32 129, label %37
    i32 132, label %46
    i32 131, label %59
  ]

16:                                               ; preds = %4
  %17 = call i32 (...) @esp_wifi_connect()
  br label %139

18:                                               ; preds = %4
  store i32 1, i32* @gl_sta_connected, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %9, align 8
  %21 = load i32, i32* @gl_sta_bssid, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32 %21, i32 %24, i32 6)
  %26 = load i32, i32* @gl_sta_ssid, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32 %26, i32 %29, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @gl_sta_ssid_len, align 4
  br label %139

37:                                               ; preds = %4
  store i32 0, i32* @gl_sta_connected, align 4
  %38 = load i32, i32* @gl_sta_ssid, align 4
  %39 = call i32 @memset(i32 %38, i32 0, i32 32)
  %40 = load i32, i32* @gl_sta_bssid, align 4
  %41 = call i32 @memset(i32 %40, i32 0, i32 6)
  store i32 0, i32* @gl_sta_ssid_len, align 4
  %42 = call i32 (...) @esp_wifi_connect()
  %43 = load i32, i32* @wifi_event_group, align 4
  %44 = load i32, i32* @CONNECTED_BIT, align 4
  %45 = call i32 @xEventGroupClearBits(i32 %43, i32 %44)
  br label %139

46:                                               ; preds = %4
  %47 = call i32 @esp_wifi_get_mode(i32* %10)
  %48 = load i32, i32* @gl_sta_connected, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @ESP_BLUFI_STA_CONN_SUCCESS, align 4
  %53 = call i32 @esp_blufi_send_wifi_conn_report(i32 %51, i32 %52, i32 0, i32* null)
  br label %58

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @ESP_BLUFI_STA_CONN_FAIL, align 4
  %57 = call i32 @esp_blufi_send_wifi_conn_report(i32 %55, i32 %56, i32 0, i32* null)
  br label %58

58:                                               ; preds = %54, %50
  br label %139

59:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %60 = call i32 @esp_wifi_scan_get_ap_num(i32* %11)
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @BLUFI_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %139

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 8, %67
  %69 = trunc i64 %68 to i32
  %70 = call i64 @malloc(i32 %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %12, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %65
  %75 = call i32 @BLUFI_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %139

76:                                               ; preds = %65
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = call i32 @esp_wifi_scan_get_ap_records(i32* %11, %struct.TYPE_8__* %77)
  %79 = call i32 @ESP_ERROR_CHECK(i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 8
  %83 = trunc i64 %82 to i32
  %84 = call i64 @malloc(i32 %83)
  %85 = inttoptr i64 %84 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %13, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %76
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %90 = icmp ne %struct.TYPE_8__* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %93 = call i32 @free(%struct.TYPE_8__* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = call i32 @BLUFI_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %139

96:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %126, %96
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %107, i32* %112, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcpy(i32 %118, i32 %124, i32 4)
  br label %126

126:                                              ; preds = %101
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %97

129:                                              ; preds = %97
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %132 = call i32 @esp_blufi_send_wifi_list(i32 %130, %struct.TYPE_8__* %131)
  %133 = call i32 (...) @esp_wifi_scan_stop()
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %135 = call i32 @free(%struct.TYPE_8__* %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %137 = call i32 @free(%struct.TYPE_8__* %136)
  br label %139

138:                                              ; preds = %4
  br label %139

139:                                              ; preds = %138, %129, %94, %74, %63, %58, %37, %18, %16
  ret void
}

declare dso_local i32 @esp_wifi_connect(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @xEventGroupClearBits(i32, i32) #1

declare dso_local i32 @esp_wifi_get_mode(i32*) #1

declare dso_local i32 @esp_blufi_send_wifi_conn_report(i32, i32, i32, i32*) #1

declare dso_local i32 @esp_wifi_scan_get_ap_num(i32*) #1

declare dso_local i32 @BLUFI_INFO(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @BLUFI_ERROR(i8*) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_wifi_scan_get_ap_records(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @esp_blufi_send_wifi_list(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @esp_wifi_scan_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
