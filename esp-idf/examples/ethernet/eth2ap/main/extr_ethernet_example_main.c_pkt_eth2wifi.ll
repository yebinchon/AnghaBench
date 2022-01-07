; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/ethernet/eth2ap/main/extr_ethernet_example_main.c_pkt_eth2wifi.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/ethernet/eth2ap/main/extr_ethernet_example_main.c_pkt_eth2wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@ESP_OK = common dso_local global i32 0, align 4
@flow_control_queue = common dso_local global i32 0, align 4
@FLOW_CONTROL_QUEUE_TIMEOUT_MS = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"send flow control message failed or timeout\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @pkt_eth2wifi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_eth2wifi(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ESP_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %12, align 8
  %14 = load i32, i32* @flow_control_queue, align 4
  %15 = load i32, i32* @FLOW_CONTROL_QUEUE_TIMEOUT_MS, align 4
  %16 = call i32 @pdMS_TO_TICKS(i32 %15)
  %17 = call i64 @xQueueSend(i32 %14, %struct.TYPE_3__* %8, i32 %16)
  %18 = load i64, i64* @pdTRUE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @free(i32* %23)
  %25 = load i32, i32* @ESP_FAIL, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %20, %3
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i64 @xQueueSend(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
