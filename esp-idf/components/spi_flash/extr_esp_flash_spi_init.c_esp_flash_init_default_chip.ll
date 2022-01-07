; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_esp_flash_spi_init.c_esp_flash_init_default_chip.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_esp_flash_spi_init.c_esp_flash_init_default_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@default_driver_data = common dso_local global i32 0, align 4
@default_chip = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ESP_OK = common dso_local global i64 0, align 8
@g_rom_flashchip = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"Detected size(%dk) smaller than the size in the binary image header(%dk). Probe failed.\00", align 1
@ESP_ERR_FLASH_SIZE_NOT_MATCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [116 x i8] c"Detected size(%dk) larger than the size in the binary image header(%dk). Using the size in the binary image header.\00", align 1
@esp_flash_default_chip = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_flash_init_default_chip() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i32 (...) @ESP_FLASH_HOST_CONFIG_DEFAULT()
  store i32 %4, i32* %2, align 4
  %5 = call i32 @spi_flash_hal_init(i32* @default_driver_data, i32* %2)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @default_chip, i32 0, i32 1), align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32* @default_driver_data, i32** %7, align 8
  %8 = call i64 @esp_flash_init(%struct.TYPE_8__* @default_chip)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @ESP_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i64, i64* %3, align 8
  store i64 %13, i64* %1, align 8
  br label %42

14:                                               ; preds = %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @default_chip, i32 0, i32 0), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_rom_flashchip, i32 0, i32 0), align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* @TAG, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @default_chip, i32 0, i32 0), align 8
  %21 = sdiv i32 %20, 1024
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_rom_flashchip, i32 0, i32 0), align 4
  %23 = sdiv i32 %22, 1024
  %24 = call i32 @ESP_EARLY_LOGE(i32 %19, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i64, i64* @ESP_ERR_FLASH_SIZE_NOT_MATCH, align 8
  store i64 %25, i64* %1, align 8
  br label %42

26:                                               ; preds = %14
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @default_chip, i32 0, i32 0), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_rom_flashchip, i32 0, i32 0), align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* @TAG, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @default_chip, i32 0, i32 0), align 8
  %33 = sdiv i32 %32, 1024
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_rom_flashchip, i32 0, i32 0), align 4
  %35 = sdiv i32 %34, 1024
  %36 = call i32 @ESP_EARLY_LOGW(i32 %31, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_rom_flashchip, i32 0, i32 0), align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @default_chip, i32 0, i32 0), align 8
  br label %38

38:                                               ; preds = %30, %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_rom_flashchip, i32 0, i32 0), align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @default_chip, i32 0, i32 0), align 8
  store %struct.TYPE_8__* @default_chip, %struct.TYPE_8__** @esp_flash_default_chip, align 8
  %41 = load i64, i64* @ESP_OK, align 8
  store i64 %41, i64* %1, align 8
  br label %42

42:                                               ; preds = %39, %18, %12
  %43 = load i64, i64* %1, align 8
  ret i64 %43
}

declare dso_local i32 @ESP_FLASH_HOST_CONFIG_DEFAULT(...) #1

declare dso_local i32 @spi_flash_hal_init(i32*, i32*) #1

declare dso_local i64 @esp_flash_init(%struct.TYPE_8__*) #1

declare dso_local i32 @ESP_EARLY_LOGE(i32, i8*, i32, i32) #1

declare dso_local i32 @ESP_EARLY_LOGW(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
