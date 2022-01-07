; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-misc.c_enableCore1WDT.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-misc.c_enableCore1WDT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Failed to add Core 1 IDLE task to WDT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enableCore1WDT() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @xTaskGetIdleTaskHandleForCPU(i32 1)
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i32*, i32** %1, align 8
  %7 = call i64 @esp_task_wdt_add(i32* %6)
  %8 = load i64, i64* @ESP_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5, %0
  %11 = call i32 @log_e(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %5
  ret void
}

declare dso_local i32* @xTaskGetIdleTaskHandleForCPU(i32) #1

declare dso_local i64 @esp_task_wdt_add(i32*) #1

declare dso_local i32 @log_e(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
