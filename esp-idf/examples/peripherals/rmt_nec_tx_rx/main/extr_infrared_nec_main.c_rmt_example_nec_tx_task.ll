; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/rmt_nec_tx_rx/main/extr_infrared_nec_main.c_rmt_example_nec_tx_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/rmt_nec_tx_rx/main/extr_infrared_nec_main.c_rmt_example_nec_tx_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEC_TAG = common dso_local global i32 0, align 4
@ESP_LOG_INFO = common dso_local global i32 0, align 4
@RMT_TX_CHANNEL = common dso_local global i32 0, align 4
@RMT_TX_DATA_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"RMT TX DATA\00", align 1
@NEC_DATA_ITEM_NUM = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rmt_example_nec_tx_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmt_example_nec_tx_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = call i32 @vTaskDelay(i32 10)
  %13 = call i32 (...) @nec_tx_init()
  %14 = load i32, i32* @NEC_TAG, align 4
  %15 = load i32, i32* @ESP_LOG_INFO, align 4
  %16 = call i32 @esp_log_level_set(i32 %14, i32 %15)
  %17 = load i32, i32* @RMT_TX_CHANNEL, align 4
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 17, i32* %5, align 4
  %18 = load i32, i32* @RMT_TX_DATA_NUM, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %69, %1
  %20 = load i32, i32* @NEC_TAG, align 4
  %21 = call i32 @ESP_LOGI(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @NEC_DATA_ITEM_NUM, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %24, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @malloc(i64 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* @NEC_DATA_ITEM_NUM, align 4
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @memset(i8* %35, i32 0, i64 %36)
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %19, %61
  %39 = load i32, i32* %3, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = xor i32 %47, -1
  %49 = shl i32 %48, 8
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = xor i32 %52, -1
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @nec_build_items(i32 %39, i32* %43, i32 %46, i32 %51, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  br label %69

61:                                               ; preds = %38
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %38

69:                                               ; preds = %60
  %70 = load i32, i32* %3, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @rmt_write_items(i32 %70, i32* %71, i32 %72, i32 1)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @portMAX_DELAY, align 4
  %76 = call i32 @rmt_wait_tx_done(i32 %74, i32 %75)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @free(i32* %77)
  %79 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %80 = sdiv i32 2000, %79
  %81 = call i32 @vTaskDelay(i32 %80)
  br label %19
}

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @nec_tx_init(...) #1

declare dso_local i32 @esp_log_level_set(i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @nec_build_items(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rmt_write_items(i32, i32*, i32, i32) #1

declare dso_local i32 @rmt_wait_tx_done(i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
