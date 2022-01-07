; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_qio_mode.c_bootloader_enable_qio_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_qio_mode.c_bootloader_enable_qio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Probing for QIO mode enable...\00", align 1
@g_rom_flashchip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Raw SPI flash chip id 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Manufacturer ID 0x%02x chip ID 0x%04x\00", align 1
@NUM_CHIPS = common dso_local global i32 0, align 4
@chip_data = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Enabling QIO for flash chip %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Enabling default flash chip QIO\00", align 1
@FLASH_WRAP_MODE_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bootloader_enable_qio_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @esp_rom_spiflash_wait_idle(%struct.TYPE_6__* @g_rom_flashchip)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_rom_flashchip, i32 0, i32 0), align 4
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @TAG, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %2, align 8
  %17 = load i32, i32* %1, align 4
  %18 = and i32 %17, 65535
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @TAG, align 4
  %20 = load i64, i64* %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %20, i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %62, %0
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @NUM_CHIPS, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chip_data, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %5, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %28
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %39, %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %46, %49
  %51 = icmp eq i32 %43, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %38
  %53 = load i32, i32* @TAG, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chip_data, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %65

61:                                               ; preds = %38, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %23

65:                                               ; preds = %52, %23
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @NUM_CHIPS, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @TAG, align 4
  %72 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chip_data, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chip_data, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chip_data, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @enable_qio_mode(i32 %79, i32 %85, i32 %91)
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @esp_rom_spiflash_wait_idle(%struct.TYPE_6__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @enable_qio_mode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
