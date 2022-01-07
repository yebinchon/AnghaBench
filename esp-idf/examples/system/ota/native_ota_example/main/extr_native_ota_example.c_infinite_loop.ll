; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/ota/native_ota_example/main/extr_native_ota_example.c_infinite_loop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/ota/native_ota_example/main/extr_native_ota_example.c_infinite_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"When a new firmware is available on the server, press the reset button to download it\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Waiting for a new firmware ... %d\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @infinite_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infinite_loop() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @TAG, align 4
  %3 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %2, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  br label %4

4:                                                ; preds = %0, %4
  %5 = load i32, i32* @TAG, align 4
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  %8 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %10 = sdiv i32 2000, %9
  %11 = call i32 @vTaskDelay(i32 %10)
  br label %4
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
