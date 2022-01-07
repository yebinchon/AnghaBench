; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/simple_sniffer/main/extr_cmd_sniffer.c_sniffer_stop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/simple_sniffer/main/extr_cmd_sniffer.c_sniffer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"sniffer is already stopped\00", align 1
@err = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"stop wifi promiscuous failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unsupported interface\00", align 1
@SNIFFER_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"stop WiFi promiscuous ok\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@SNIFFER_PROCESS_PACKET_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"stop pcap session failed\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @sniffer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sniffer_stop(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @err, align 4
  %10 = call i32 @SNIFFER_CHECK(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %21 [
    i32 128, label %14
  ]

14:                                               ; preds = %1
  %15 = call i64 @esp_wifi_set_promiscuous(i32 0)
  %16 = load i64, i64* @ESP_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @err, align 4
  %20 = call i32 @SNIFFER_CHECK(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @err, align 4
  %23 = call i32 @SNIFFER_CHECK(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* @SNIFFER_TAG, align 4
  %26 = call i32 @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @portMAX_DELAY, align 4
  %33 = call i32 @xSemaphoreTake(i32* %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @vSemaphoreDelete(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @uxQueueMessagesWaiting(i32* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %48, %24
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @SNIFFER_PROCESS_PACKET_TIMEOUT_MS, align 4
  %53 = call i32 @pdMS_TO_TICKS(i32 %52)
  %54 = call i32 @xQueueReceive(i32* %51, %struct.TYPE_6__* %5, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @free(i32 %56)
  br label %44

58:                                               ; preds = %44
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @vQueueDelete(i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @pcap_deinit(i32 %67)
  %69 = load i64, i64* @ESP_OK, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* @err, align 4
  %73 = call i32 @SNIFFER_CHECK(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load i64, i64* @ESP_OK, align 8
  store i64 %74, i64* %2, align 8
  br label %77

75:                                               ; No predecessors!
  %76 = load i64, i64* @ESP_FAIL, align 8
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %75, %58
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i32 @SNIFFER_CHECK(i32, i8*, i32) #1

declare dso_local i64 @esp_wifi_set_promiscuous(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @xSemaphoreTake(i32*, i32) #1

declare dso_local i32 @vSemaphoreDelete(i32*) #1

declare dso_local i32 @uxQueueMessagesWaiting(i32*) #1

declare dso_local i32 @xQueueReceive(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @vQueueDelete(i32*) #1

declare dso_local i64 @pcap_deinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
