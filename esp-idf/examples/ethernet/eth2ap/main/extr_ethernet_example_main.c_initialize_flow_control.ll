; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/ethernet/eth2ap/main/extr_ethernet_example_main.c_initialize_flow_control.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/ethernet/eth2ap/main/extr_ethernet_example_main.c_initialize_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLOW_CONTROL_QUEUE_LENGTH = common dso_local global i32 0, align 4
@flow_control_queue = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"create flow control queue failed\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@eth2wifi_flow_control_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"flow_ctl\00", align 1
@tskIDLE_PRIORITY = common dso_local global i64 0, align 8
@pdTRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"create flow control task failed\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @initialize_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_flow_control() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @FLOW_CONTROL_QUEUE_LENGTH, align 4
  %4 = call i32 @xQueueCreate(i32 %3, i32 4)
  store i32 %4, i32* @flow_control_queue, align 4
  %5 = load i32, i32* @flow_control_queue, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGE(i32 %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ESP_FAIL, align 4
  store i32 %10, i32* %1, align 4
  br label %25

11:                                               ; preds = %0
  %12 = load i32, i32* @eth2wifi_flow_control_task, align 4
  %13 = load i64, i64* @tskIDLE_PRIORITY, align 8
  %14 = add nsw i64 %13, 2
  %15 = call i64 @xTaskCreate(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2048, i32* null, i64 %14, i32* null)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @pdTRUE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 @ESP_LOGE(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @ESP_FAIL, align 4
  store i32 %22, i32* %1, align 4
  br label %25

23:                                               ; preds = %11
  %24 = load i32, i32* @ESP_OK, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %19, %7
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @xQueueCreate(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @xTaskCreate(i32, i8*, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
