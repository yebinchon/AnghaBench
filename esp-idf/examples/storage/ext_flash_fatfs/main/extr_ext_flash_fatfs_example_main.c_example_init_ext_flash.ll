; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/ext_flash_fatfs/main/extr_ext_flash_fatfs_example_main.c_example_init_ext_flash.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/ext_flash_fatfs/main/extr_ext_flash_fatfs_example_main.c_example_init_ext_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@VSPI_IOMUX_PIN_NUM_CLK = common dso_local global i32 0, align 4
@VSPI_IOMUX_PIN_NUM_MISO = common dso_local global i32 0, align 4
@VSPI_IOMUX_PIN_NUM_MOSI = common dso_local global i32 0, align 4
@VSPI_IOMUX_PIN_NUM_CS = common dso_local global i32 0, align 4
@ESP_FLASH_40MHZ = common dso_local global i32 0, align 4
@SPI_FLASH_DIO = common dso_local global i32 0, align 4
@VSPI_HOST = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Initializing external SPI Flash\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Pin assignments:\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"MOSI: %2d   MISO: %2d   SCLK: %2d   CS: %2d\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to initialize external Flash: %s (0x%x)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Initialized external Flash, size=%d KB, ID=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* ()* @example_init_ext_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @example_init_ext_flash() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 -1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 -1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %10 = load i32, i32* @VSPI_IOMUX_PIN_NUM_CLK, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  %12 = load i32, i32* @VSPI_IOMUX_PIN_NUM_MISO, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 4
  %14 = load i32, i32* @VSPI_IOMUX_PIN_NUM_MOSI, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %16 = load i32, i32* @VSPI_IOMUX_PIN_NUM_CS, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %18 = load i32, i32* @ESP_FLASH_40MHZ, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  %20 = load i32, i32* @SPI_FLASH_DIO, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 4
  %23 = load i32, i32* @VSPI_HOST, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @TAG, align 4
  %27 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @TAG, align 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %32, i32 %34, i32 %36)
  %38 = load i32, i32* @VSPI_HOST, align 4
  %39 = call i32 @spi_bus_initialize(i32 %38, %struct.TYPE_10__* %2, i32 1)
  %40 = call i32 @ESP_ERROR_CHECK(i32 %39)
  %41 = call i32 @spi_bus_add_flash_device(%struct.TYPE_11__** %4, %struct.TYPE_12__* %3)
  %42 = call i32 @ESP_ERROR_CHECK(i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = call i64 @esp_flash_init(%struct.TYPE_11__* %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @ESP_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %0
  %49 = load i32, i32* @TAG, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @esp_err_to_name(i64 %50)
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @ESP_LOGE(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %51, i64 %52)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %1, align 8
  br label %66

54:                                               ; preds = %0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = call i32 @esp_flash_read_id(%struct.TYPE_11__* %55, i32* %6)
  %57 = call i32 @ESP_ERROR_CHECK(i32 %56)
  %58 = load i32, i32* @TAG, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 1024
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %1, align 8
  br label %66

66:                                               ; preds = %54, %48
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  ret %struct.TYPE_11__* %67
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @spi_bus_initialize(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @spi_bus_add_flash_device(%struct.TYPE_11__**, %struct.TYPE_12__*) #1

declare dso_local i64 @esp_flash_init(%struct.TYPE_11__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i64) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i32 @esp_flash_read_id(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
