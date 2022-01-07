; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_job_write_reg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_job_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"========JOB: write slave reg========\00", align 1
@SLAVE_REG_VALUE = common dso_local global i32 0, align 4
@JOB_WRITE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"reading register %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"read registers:\00", align 1
@ESP_LOG_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @job_write_reg(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i32], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGI(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @SLAVE_REG_VALUE, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @esp_slave_write_reg(i32* %10, i32 %11, i32 %12, i32* null)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ESP_ERROR_CHECK(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @JOB_WRITE_REG, align 4
  %18 = call i32 @slave_inform_job(i32* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ESP_ERROR_CHECK(i32 %19)
  %21 = call i32 @vTaskDelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %37, %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 64
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i32, i32* @TAG, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ESP_LOGD(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %32
  %34 = call i32 @esp_slave_read_reg(i32* %29, i32 %30, i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ESP_ERROR_CHECK(i32 %35)
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load i32, i32* @TAG, align 4
  %42 = call i32 @ESP_LOGI(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @TAG, align 4
  %44 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %45 = load i32, i32* @ESP_LOG_INFO, align 4
  %46 = call i32 @ESP_LOG_BUFFER_HEXDUMP(i32 %43, i32* %44, i32 64, i32 %45)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_slave_write_reg(i32*, i32, i32, i32*) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @slave_inform_job(i32*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @esp_slave_read_reg(i32*, i32, i32*) #1

declare dso_local i32 @ESP_LOG_BUFFER_HEXDUMP(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
