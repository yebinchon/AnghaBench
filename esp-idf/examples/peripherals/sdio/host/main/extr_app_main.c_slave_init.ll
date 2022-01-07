; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_slave_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_slave_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Probe using SD 1-bit...\0A\00", align 1
@SDMMC_HOST_FLAG_1BIT = common dso_local global i32 0, align 4
@SDMMC_FREQ_DEFAULT = common dso_local global i32 0, align 4
@SDMMC_HOST_SLOT_1 = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"slave init failed, retry...\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@HSPI_HOST = common dso_local global i32 0, align 4
@SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_CLK = common dso_local global i32 0, align 4
@SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_CMD = common dso_local global i32 0, align 4
@SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D0 = common dso_local global i32 0, align 4
@SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D1 = common dso_local global i32 0, align 4
@SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D3 = common dso_local global i32 0, align 4
@SDMMC_FREQ_HIGHSPEED = common dso_local global i32 0, align 4
@SDMMC_HOST_FLAG_4BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slave_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = call i64 (...) @SDMMC_HOST_DEFAULT()
  %10 = bitcast %struct.TYPE_9__* %5 to i64*
  store i64 %9, i64* %10, align 4
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @SDMMC_HOST_FLAG_1BIT, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @SDMMC_FREQ_DEFAULT, align 4
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = call i32 (...) @SDMMC_SLOT_CONFIG_DEFAULT()
  store i32 %17, i32* %6, align 4
  %18 = call i32 (...) @sdmmc_host_init()
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ESP_ERROR_CHECK(i32 %19)
  %21 = load i32, i32* @SDMMC_HOST_SLOT_1, align 4
  %22 = call i32 @sdmmc_host_init_slot(i32 %21, i32* %6)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ESP_ERROR_CHECK(i32 %23)
  %25 = call i64 @malloc(i32 4)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %30, i32* %2, align 4
  br label %72

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %38, %31
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @sdmmc_card_init(%struct.TYPE_9__* %5, i32* %33)
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %44

38:                                               ; preds = %32
  %39 = load i32, i32* @TAG, align 4
  %40 = call i32 @ESP_LOGW(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %42 = sdiv i32 1000, %41
  %43 = call i32 @vTaskDelay(i32 %42)
  br label %32

44:                                               ; preds = %37
  %45 = load i32, i32* @stdout, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @sdmmc_card_print_info(i32 %45, i32* %46)
  %48 = call i32 @gpio_pullup_en(i32 14)
  %49 = call i32 @gpio_pulldown_dis(i32 14)
  %50 = call i32 @gpio_pullup_en(i32 15)
  %51 = call i32 @gpio_pulldown_dis(i32 15)
  %52 = call i32 @gpio_pullup_en(i32 2)
  %53 = call i32 @gpio_pulldown_dis(i32 2)
  %54 = call i32 @gpio_pullup_en(i32 4)
  %55 = call i32 @gpio_pulldown_dis(i32 4)
  %56 = call i32 @gpio_pullup_en(i32 12)
  %57 = call i32 @gpio_pulldown_dis(i32 12)
  %58 = call i32 @gpio_pullup_en(i32 13)
  %59 = call i32 @gpio_pulldown_dis(i32 13)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @ESP_SLAVE_DEFAULT_CONTEXT(i32* %60)
  %62 = load i32*, i32** %3, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @esp_slave_init_io(i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ESP_ERROR_CHECK(i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @print_sdio_cis_information(i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @ESP_ERROR_CHECK(i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %44, %29
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @SDMMC_HOST_DEFAULT(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @SDMMC_SLOT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @sdmmc_host_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @sdmmc_host_init_slot(i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @sdmmc_card_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @sdmmc_card_print_info(i32, i32*) #1

declare dso_local i32 @gpio_pullup_en(i32) #1

declare dso_local i32 @gpio_pulldown_dis(i32) #1

declare dso_local i32 @ESP_SLAVE_DEFAULT_CONTEXT(i32*) #1

declare dso_local i32 @esp_slave_init_io(i32*) #1

declare dso_local i32 @print_sdio_cis_information(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
