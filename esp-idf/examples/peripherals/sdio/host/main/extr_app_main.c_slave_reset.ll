; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_slave_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_slave_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"send reset to slave...\00", align 1
@JOB_RESET = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@SLAVE_INTR_NOTIFY = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"slave io ready\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @slave_reset(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @TAG, align 4
  %6 = call i32 @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @JOB_RESET, align 4
  %9 = call i64 @esp_slave_write_reg(i32* %7, i32 0, i32 %8, i32* null)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %2, align 8
  br label %34

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @SLAVE_INTR_NOTIFY, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = call i64 @esp_slave_send_slave_intr(i32* %16, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @ESP_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* %4, align 8
  store i64 %24, i64* %2, align 8
  br label %34

25:                                               ; preds = %15
  %26 = load i32, i32* @portTICK_RATE_MS, align 4
  %27 = sdiv i32 500, %26
  %28 = call i32 @vTaskDelay(i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @esp_slave_wait_for_ioready(i32* %29)
  store i64 %30, i64* %4, align 8
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGI(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %25, %23, %13
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i64 @esp_slave_write_reg(i32*, i32, i32, i32*) #1

declare dso_local i64 @esp_slave_send_slave_intr(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i64 @esp_slave_wait_for_ioready(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
