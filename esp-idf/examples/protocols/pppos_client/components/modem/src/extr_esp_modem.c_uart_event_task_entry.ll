; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_esp_modem.c_uart_event_task_entry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_esp_modem.c_uart_event_task_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MODEM_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"HW FIFO Overflow\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Ring Buffer Full\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Rx Break\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Parity Error\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Frame Error\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unknown uart event type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @uart_event_task_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_event_task_entry(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  br label %7

7:                                                ; preds = %1, %60
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pdMS_TO_TICKS(i32 100)
  %12 = call i64 @xQueueReceive(i32 %10, %struct.TYPE_6__* %4, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %54 [
    i32 132, label %17
    i32 131, label %20
    i32 133, label %31
    i32 134, label %42
    i32 129, label %45
    i32 130, label %48
    i32 128, label %51
  ]

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call i32 @esp_handle_uart_data(%struct.TYPE_7__* %18)
  br label %59

20:                                               ; preds = %14
  %21 = load i32, i32* @MODEM_TAG, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @uart_flush_input(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @xQueueReset(i32 %29)
  br label %59

31:                                               ; preds = %14
  %32 = load i32, i32* @MODEM_TAG, align 4
  %33 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @uart_flush_input(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @xQueueReset(i32 %40)
  br label %59

42:                                               ; preds = %14
  %43 = load i32, i32* @MODEM_TAG, align 4
  %44 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %59

45:                                               ; preds = %14
  %46 = load i32, i32* @MODEM_TAG, align 4
  %47 = call i32 @ESP_LOGE(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %59

48:                                               ; preds = %14
  %49 = load i32, i32* @MODEM_TAG, align 4
  %50 = call i32 @ESP_LOGE(i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %59

51:                                               ; preds = %14
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = call i32 @esp_handle_uart_pattern(%struct.TYPE_7__* %52)
  br label %59

54:                                               ; preds = %14
  %55 = load i32, i32* @MODEM_TAG, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %51, %48, %45, %42, %31, %20, %17
  br label %60

60:                                               ; preds = %59, %7
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pdMS_TO_TICKS(i32 50)
  %65 = call i32 @esp_event_loop_run(i32 %63, i32 %64)
  br label %7
}

declare dso_local i64 @xQueueReceive(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @esp_handle_uart_data(%struct.TYPE_7__*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, ...) #1

declare dso_local i32 @uart_flush_input(i32) #1

declare dso_local i32 @xQueueReset(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_handle_uart_pattern(%struct.TYPE_7__*) #1

declare dso_local i32 @esp_event_loop_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
