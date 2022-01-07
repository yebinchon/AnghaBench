; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth.c_esp_eth_driver_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth.c_esp_eth_driver_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ESP_OK = common dso_local global i64 0, align 8
@pdPASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"start eth_link_timer failed\00", align 1
@err_start_timer = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@ETH_EVENT = common dso_local global i32 0, align 4
@ETHERNET_EVENT_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"send ETHERNET_EVENT_START event failed\00", align 1
@err_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_eth_driver_start(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load i64, i64* @ESP_OK, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @xTimerStart(i32 %10, i32 0)
  %12 = load i64, i64* @pdPASS, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @err_start_timer, align 4
  %16 = load i32, i32* @ESP_FAIL, align 4
  %17 = call i32 @ETH_CHECK(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* @ETH_EVENT, align 4
  %19 = load i32, i32* @ETHERNET_EVENT_START, align 4
  %20 = call i64 @esp_event_post(i32 %18, i32 %19, %struct.TYPE_6__** %5, i32 8, i32 0)
  %21 = load i64, i64* @ESP_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @err_event, align 4
  %25 = load i32, i32* @ESP_FAIL, align 4
  %26 = call i32 @ETH_CHECK(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %2, align 8
  br label %37

28:                                               ; No predecessors!
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @xTimerDelete(i32 %31, i32 0)
  br label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = call i32 @esp_eth_driver_uninstall(%struct.TYPE_6__* %34)
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %33, %1
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i32 @ETH_CHECK(i32, i8*, i32, i32) #1

declare dso_local i64 @xTimerStart(i32, i32) #1

declare dso_local i64 @esp_event_post(i32, i32, %struct.TYPE_6__**, i32, i32) #1

declare dso_local i32 @xTimerDelete(i32, i32) #1

declare dso_local i32 @esp_eth_driver_uninstall(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
