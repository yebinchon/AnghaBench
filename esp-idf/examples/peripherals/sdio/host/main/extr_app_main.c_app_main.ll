; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"host ready, start initializing slave...\00", align 1
@CONFIG_FREERTOS_HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @slave_power_on()
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @slave_init(i32* %1)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ESP_ERROR_CHECK(i32 %10)
  %12 = call i32 @slave_reset(i32* %1)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @ESP_ERROR_CHECK(i32 %13)
  %15 = call i32 @job_write_reg(i32* %1, i32 10)
  store i32 2, i32* %5, align 4
  br label %16

16:                                               ; preds = %0, %37
  %17 = call i32 @job_getint(i32* %1)
  %18 = call i32 (...) @xTaskGetTickCount()
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %31
  %20 = call i32 @process_event(i32* %1)
  %21 = call i32 @vTaskDelay(i32 1)
  %22 = call i32 (...) @xTaskGetTickCount()
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %23, %24
  %26 = mul nsw i32 %25, 1000
  %27 = load i32, i32* @CONFIG_FREERTOS_HZ, align 4
  %28 = sdiv i32 %26, %27
  %29 = icmp sgt i32 %28, 5000
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %32

31:                                               ; preds = %19
  br label %19

32:                                               ; preds = %30
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32
  br label %16

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %55
  %40 = call i32 @job_fifo(i32* %1)
  %41 = call i32 (...) @xTaskGetTickCount()
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %54
  %43 = call i32 @process_event(i32* %1)
  %44 = call i32 @vTaskDelay(i32 1)
  %45 = call i32 (...) @xTaskGetTickCount()
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 %46, %47
  %49 = mul nsw i32 %48, 1000
  %50 = load i32, i32* @CONFIG_FREERTOS_HZ, align 4
  %51 = sdiv i32 %49, %50
  %52 = icmp sgt i32 %51, 2000
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %55

54:                                               ; preds = %42
  br label %42

55:                                               ; preds = %53
  br label %39
}

declare dso_local i32 @slave_power_on(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @slave_init(i32*) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @slave_reset(i32*) #1

declare dso_local i32 @job_write_reg(i32*, i32) #1

declare dso_local i32 @job_getint(i32*) #1

declare dso_local i32 @xTaskGetTickCount(...) #1

declare dso_local i32 @process_event(i32*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @job_fifo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
