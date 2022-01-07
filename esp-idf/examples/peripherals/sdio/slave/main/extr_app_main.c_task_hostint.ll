; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/slave/main/extr_app_main.c_task_hostint.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/slave/main/extr_app_main.c_task_hostint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"send intr: %d\00", align 1
@s_job = common dso_local global i32 0, align 4
@JOB_RESET = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @task_hostint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_hostint() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %20, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  %6 = load i32, i32* @TAG, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @ESP_LOGV(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @sdio_slave_send_host_int(i32 %9)
  %11 = load i32, i32* @s_job, align 4
  %12 = load i32, i32* @JOB_RESET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %23

16:                                               ; preds = %5
  %17 = load i32, i32* @portTICK_RATE_MS, align 4
  %18 = sdiv i32 500, %17
  %19 = call i32 @vTaskDelay(i32 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %2

23:                                               ; preds = %15, %2
  %24 = load i32, i32* @ESP_OK, align 4
  ret i32 %24
}

declare dso_local i32 @ESP_LOGV(i32, i8*, i32) #1

declare dso_local i32 @sdio_slave_send_host_int(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
