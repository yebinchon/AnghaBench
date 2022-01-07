; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/espnow/main/extr_espnow_example_main.c_example_espnow_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/espnow/main/extr_espnow_example_main.c_example_espnow_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i64, i32, i32, i32 }

@ESPNOW_QUEUE_SIZE = common dso_local global i32 0, align 4
@s_example_espnow_queue = common dso_local global i32* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Create mutex fail\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@example_espnow_send_cb = common dso_local global i32 0, align 4
@example_espnow_recv_cb = common dso_local global i32 0, align 4
@CONFIG_ESPNOW_PMK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Malloc peer information fail\00", align 1
@CONFIG_ESPNOW_CHANNEL = common dso_local global i32 0, align 4
@ESPNOW_WIFI_IF = common dso_local global i32 0, align 4
@s_example_broadcast_mac = common dso_local global i32 0, align 4
@ESP_NOW_ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Malloc send parameter fail\00", align 1
@CONFIG_ESPNOW_SEND_COUNT = common dso_local global i32 0, align 4
@CONFIG_ESPNOW_SEND_DELAY = common dso_local global i32 0, align 4
@CONFIG_ESPNOW_SEND_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Malloc send buffer fail\00", align 1
@example_espnow_task = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"example_espnow_task\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @example_espnow_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @example_espnow_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = load i32, i32* @ESPNOW_QUEUE_SIZE, align 4
  %5 = call i32* @xQueueCreate(i32 %4, i32 4)
  store i32* %5, i32** @s_example_espnow_queue, align 8
  %6 = load i32*, i32** @s_example_espnow_queue, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGE(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ESP_FAIL, align 4
  store i32 %11, i32* %1, align 4
  br label %121

12:                                               ; preds = %0
  %13 = call i32 (...) @esp_now_init()
  %14 = call i32 @ESP_ERROR_CHECK(i32 %13)
  %15 = load i32, i32* @example_espnow_send_cb, align 4
  %16 = call i32 @esp_now_register_send_cb(i32 %15)
  %17 = call i32 @ESP_ERROR_CHECK(i32 %16)
  %18 = load i32, i32* @example_espnow_recv_cb, align 4
  %19 = call i32 @esp_now_register_recv_cb(i32 %18)
  %20 = call i32 @ESP_ERROR_CHECK(i32 %19)
  %21 = load i64, i64* @CONFIG_ESPNOW_PMK, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @esp_now_set_pmk(i32* %22)
  %24 = call i32 @ESP_ERROR_CHECK(i32 %23)
  %25 = call i8* @malloc(i32 72)
  %26 = bitcast i8* %25 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %3, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %12
  %30 = load i32, i32* @TAG, align 4
  %31 = call i32 @ESP_LOGE(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** @s_example_espnow_queue, align 8
  %33 = call i32 @vSemaphoreDelete(i32* %32)
  %34 = call i32 (...) @esp_now_deinit()
  %35 = load i32, i32* @ESP_FAIL, align 4
  store i32 %35, i32* %1, align 4
  br label %121

36:                                               ; preds = %12
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = call i32 @memset(%struct.TYPE_8__* %37, i32 0, i32 72)
  %39 = load i32, i32* @CONFIG_ESPNOW_CHANNEL, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @ESPNOW_WIFI_IF, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @s_example_broadcast_mac, align 4
  %51 = load i32, i32* @ESP_NOW_ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = call i32 @esp_now_add_peer(%struct.TYPE_8__* %53)
  %55 = call i32 @ESP_ERROR_CHECK(i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = call i32 @free(%struct.TYPE_8__* %56)
  %58 = call i8* @malloc(i32 72)
  %59 = bitcast i8* %58 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %2, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = call i32 @memset(%struct.TYPE_8__* %60, i32 0, i32 72)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = icmp eq %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %36
  %65 = load i32, i32* @TAG, align 4
  %66 = call i32 @ESP_LOGE(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32*, i32** @s_example_espnow_queue, align 8
  %68 = call i32 @vSemaphoreDelete(i32* %67)
  %69 = call i32 (...) @esp_now_deinit()
  %70 = load i32, i32* @ESP_FAIL, align 4
  store i32 %70, i32* %1, align 4
  br label %121

71:                                               ; preds = %36
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 9
  store i64 0, i64* %77, align 8
  %78 = call i32 (...) @esp_random()
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @CONFIG_ESPNOW_SEND_COUNT, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @CONFIG_ESPNOW_SEND_DELAY, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @CONFIG_ESPNOW_SEND_LEN, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @CONFIG_ESPNOW_SEND_LEN, align 4
  %91 = call i8* @malloc(i32 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 5
  store i32* %92, i32** %94, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %71
  %100 = load i32, i32* @TAG, align 4
  %101 = call i32 @ESP_LOGE(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %103 = call i32 @free(%struct.TYPE_8__* %102)
  %104 = load i32*, i32** @s_example_espnow_queue, align 8
  %105 = call i32 @vSemaphoreDelete(i32* %104)
  %106 = call i32 (...) @esp_now_deinit()
  %107 = load i32, i32* @ESP_FAIL, align 4
  store i32 %107, i32* %1, align 4
  br label %121

108:                                              ; preds = %71
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @s_example_broadcast_mac, align 4
  %113 = load i32, i32* @ESP_NOW_ETH_ALEN, align 4
  %114 = call i32 @memcpy(i32 %111, i32 %112, i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %116 = call i32 @example_espnow_data_prepare(%struct.TYPE_8__* %115)
  %117 = load i32, i32* @example_espnow_task, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %119 = call i32 @xTaskCreate(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 2048, %struct.TYPE_8__* %118, i32 4, i32* null)
  %120 = load i32, i32* @ESP_OK, align 4
  store i32 %120, i32* %1, align 4
  br label %121

121:                                              ; preds = %108, %99, %64, %29, %8
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local i32* @xQueueCreate(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_now_init(...) #1

declare dso_local i32 @esp_now_register_send_cb(i32) #1

declare dso_local i32 @esp_now_register_recv_cb(i32) #1

declare dso_local i32 @esp_now_set_pmk(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @vSemaphoreDelete(i32*) #1

declare dso_local i32 @esp_now_deinit(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @esp_now_add_peer(%struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @esp_random(...) #1

declare dso_local i32 @example_espnow_data_prepare(%struct.TYPE_8__*) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, %struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
