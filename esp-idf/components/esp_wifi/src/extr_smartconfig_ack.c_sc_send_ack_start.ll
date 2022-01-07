; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_smartconfig_ack.c_sc_send_ack_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_smartconfig_ack.c_sc_send_ack_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cellphone IP address is NULL\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ACK parameter malloc fail\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@s_sc_ack_send = common dso_local global i32 0, align 4
@sc_ack_send_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"sc_ack_send_task\00", align 1
@SC_ACK_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@SC_ACK_TASK_PRIORITY = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Create sending smartconfig ACK task fail\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sc_send_ack_start(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 @ESP_LOGE(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %14, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = call %struct.TYPE_7__* @malloc(i32 12)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 @ESP_LOGE(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @memcpy(i32 %34, i32* %35, i32 4)
  store i32 1, i32* @s_sc_ack_send, align 4
  %37 = load i32, i32* @sc_ack_send_task, align 4
  %38 = load i32, i32* @SC_ACK_TASK_STACK_SIZE, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = load i32, i32* @SC_ACK_TASK_PRIORITY, align 4
  %41 = call i64 @xTaskCreate(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %38, %struct.TYPE_7__* %39, i32 %40, i32* null)
  %42 = load i64, i64* @pdPASS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %23
  %45 = load i32, i32* @TAG, align 4
  %46 = call i32 @ESP_LOGE(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = call i32 @free(%struct.TYPE_7__* %47)
  %49 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %23
  %51 = load i32, i32* @ESP_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %44, %19, %11
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @xTaskCreate(i32, i8*, i32, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
