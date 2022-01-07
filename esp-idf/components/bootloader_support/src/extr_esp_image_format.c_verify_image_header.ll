; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_esp_image_format.c_verify_image_header.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_esp_image_format.c_verify_image_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@ESP_OK = common dso_local global i64 0, align 8
@ESP_IMAGE_HEADER_MAGIC = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"image at 0x%x has invalid magic byte\00", align 1
@ESP_ERR_IMAGE_INVALID = common dso_local global i64 0, align 8
@ESP_IMAGE_APPLICATION = common dso_local global i32 0, align 4
@ESP_IMAGE_SPI_MODE_SLOW_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"image at 0x%x has invalid SPI mode %d\00", align 1
@ESP_IMAGE_SPI_SPEED_80M = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"image at 0x%x has invalid SPI speed %d\00", align 1
@ESP_IMAGE_FLASH_SIZE_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"image at 0x%x has invalid SPI size %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_4__*, i32)* @verify_image_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @verify_image_header(i32 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @ESP_OK, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ESP_IMAGE_HEADER_MAGIC, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @TAG, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i64, i64* @ESP_ERR_IMAGE_INVALID, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %21, %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = load i32, i32* @ESP_IMAGE_APPLICATION, align 4
  %26 = call i64 @bootloader_common_check_chip_validity(%struct.TYPE_4__* %24, i32 %25)
  %27 = load i64, i64* @ESP_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @ESP_ERR_IMAGE_INVALID, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %74, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ESP_IMAGE_SPI_MODE_SLOW_READ, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* @TAG, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ESP_LOGW(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %45)
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ESP_IMAGE_SPI_SPEED_80M, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @TAG, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ESP_LOGW(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %55, i64 %58)
  br label %60

60:                                               ; preds = %53, %47
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ESP_IMAGE_FLASH_SIZE_MAX, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @TAG, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @ESP_LOGW(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %68, i64 %71)
  br label %73

73:                                               ; preds = %66, %60
  br label %74

74:                                               ; preds = %73, %31
  %75 = load i64, i64* %7, align 8
  ret i64 %75
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i64 @bootloader_common_check_chip_validity(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
