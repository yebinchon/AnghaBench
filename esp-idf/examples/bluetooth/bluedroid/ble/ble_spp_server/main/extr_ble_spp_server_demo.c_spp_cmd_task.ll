; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_spp_server/main/extr_ble_spp_server_demo.c_spp_cmd_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_spp_server/main/extr_ble_spp_server_demo.c_spp_cmd_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@cmd_cmd_queue = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@GATTS_TABLE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spp_cmd_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %22, %1
  %5 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %6 = sdiv i32 50, %5
  %7 = call i32 @vTaskDelay(i32 %6)
  %8 = load i32, i32* @cmd_cmd_queue, align 4
  %9 = load i32, i32* @portMAX_DELAY, align 4
  %10 = call i64 @xQueueReceive(i32 %8, i32** %3, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = load i32*, i32** %3, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32 @esp_log_buffer_char(i32 %13, i8* %15, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @free(i32* %20)
  br label %22

22:                                               ; preds = %12, %4
  br label %4
}

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i64 @xQueueReceive(i32, i32**, i32) #1

declare dso_local i32 @esp_log_buffer_char(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
