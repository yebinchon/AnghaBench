; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/simple_sniffer/main/extr_cmd_sniffer.c_sniffer_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/simple_sniffer/main/extr_cmd_sniffer.c_sniffer_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@SNIFFER_PROCESS_PACKET_TIMEOUT_MS = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@SNIFFER_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"save captured packet failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sniffer_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sniffer_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %4, align 8
  br label %7

7:                                                ; preds = %40, %21, %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %7
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SNIFFER_PROCESS_PACKET_TIMEOUT_MS, align 4
  %17 = call i32 @pdMS_TO_TICKS(i32 %16)
  %18 = call i64 @xQueueReceive(i32 %15, %struct.TYPE_5__* %3, i32 %17)
  %19 = load i64, i64* @pdTRUE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %7

22:                                               ; preds = %12
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pcap_capture_packet(i32 %25, i32 %27, i32 %29, i32 %31, i32 %33)
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i32, i32* @SNIFFER_TAG, align 4
  %39 = call i32 @ESP_LOGW(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %22
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @free(i32 %42)
  br label %7

44:                                               ; preds = %7
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @xSemaphoreGive(i32 %47)
  %49 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i64 @xQueueReceive(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i64 @pcap_capture_packet(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
