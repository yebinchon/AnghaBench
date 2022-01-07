; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/nmea0183_parser/main/extr_nmea_parser.c_nmea_parser_task_entry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/nmea0183_parser/main/extr_nmea_parser.c_nmea_parser_task_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@GPS_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"HW FIFO Overflow\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Ring Buffer Full\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Rx Break\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Parity Error\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Frame Error\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unknown uart event type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nmea_parser_task_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmea_parser_task_entry(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  br label %7

7:                                                ; preds = %1, %58
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pdMS_TO_TICKS(i32 200)
  %12 = call i64 @xQueueReceive(i32 %10, %struct.TYPE_5__* %4, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %52 [
    i32 132, label %17
    i32 131, label %18
    i32 133, label %29
    i32 134, label %40
    i32 129, label %43
    i32 130, label %46
    i32 128, label %49
  ]

17:                                               ; preds = %14
  br label %57

18:                                               ; preds = %14
  %19 = load i32, i32* @GPS_TAG, align 4
  %20 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @uart_flush(i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xQueueReset(i32 %27)
  br label %57

29:                                               ; preds = %14
  %30 = load i32, i32* @GPS_TAG, align 4
  %31 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @uart_flush(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @xQueueReset(i32 %38)
  br label %57

40:                                               ; preds = %14
  %41 = load i32, i32* @GPS_TAG, align 4
  %42 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %57

43:                                               ; preds = %14
  %44 = load i32, i32* @GPS_TAG, align 4
  %45 = call i32 @ESP_LOGE(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %57

46:                                               ; preds = %14
  %47 = load i32, i32* @GPS_TAG, align 4
  %48 = call i32 @ESP_LOGE(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %57

49:                                               ; preds = %14
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = call i32 @esp_handle_uart_pattern(%struct.TYPE_6__* %50)
  br label %57

52:                                               ; preds = %14
  %53 = load i32, i32* @GPS_TAG, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %49, %46, %43, %40, %29, %18, %17
  br label %58

58:                                               ; preds = %57, %7
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pdMS_TO_TICKS(i32 50)
  %63 = call i32 @esp_event_loop_run(i32 %61, i32 %62)
  br label %7
}

declare dso_local i64 @xQueueReceive(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, ...) #1

declare dso_local i32 @uart_flush(i32) #1

declare dso_local i32 @xQueueReset(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_handle_uart_pattern(%struct.TYPE_6__*) #1

declare dso_local i32 @esp_event_loop_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
