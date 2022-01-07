; ModuleID = '/home/carl/AnghaBench/esp-idf/components/espcoredump/src/extr_core_dump_common.c_esp_core_dump_image_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/espcoredump/src/extr_core_dump_common.c_esp_core_dump_image_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_PARTITION_TYPE_DATA = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_DATA_COREDUMP = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No core dump partition found!\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Too small core dump partition!\00", align 1
@SPI_FLASH_MMAP_DATA = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to mmap core dump data (%d)!\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Core dump data CRC check failed: 0x%x -> 0x%x!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_core_dump_image_get(i64* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i64*, i64** %5, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %19, i64* %3, align 8
  br label %109

20:                                               ; preds = %15
  %21 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %22 = load i32, i32* @ESP_PARTITION_SUBTYPE_DATA_COREDUMP, align 4
  %23 = call %struct.TYPE_4__* @esp_partition_find_first(i32 %21, i32 %22, i32* null)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %9, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @ESP_FAIL, align 8
  store i64 %29, i64* %3, align 8
  br label %109

30:                                               ; preds = %20
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 8
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @TAG, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* @ESP_FAIL, align 8
  store i64 %39, i64* %3, align 8
  br label %109

40:                                               ; preds = %30
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = load i32, i32* @SPI_FLASH_MMAP_DATA, align 4
  %43 = call i64 @esp_partition_mmap(%struct.TYPE_4__* %41, i32 0, i64 8, i32 %42, i8** %7, i32* %8)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @ESP_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @TAG, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %3, align 8
  br label %109

52:                                               ; preds = %40
  %53 = load i8*, i8** %7, align 8
  %54 = bitcast i8* %53 to i64*
  store i64* %54, i64** %10, align 8
  %55 = load i64*, i64** %10, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @spi_flash_munmap(i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @SPI_FLASH_MMAP_DATA, align 4
  %64 = call i64 @esp_partition_mmap(%struct.TYPE_4__* %60, i32 0, i64 %62, i32 %63, i8** %7, i32* %8)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @ESP_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = load i32, i32* @TAG, align 4
  %70 = load i64, i64* %6, align 8
  %71 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %6, align 8
  store i64 %72, i64* %3, align 8
  br label %109

73:                                               ; preds = %52
  %74 = load i8*, i8** %7, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i64*, i64** %5, align 8
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = bitcast i32* %78 to i64*
  store i64* %79, i64** %11, align 8
  %80 = load i64*, i64** %11, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 -1
  store i64* %81, i64** %11, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i64*, i64** %5, align 8
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %85, 8
  %87 = call i64 @crc32_le(i32 0, i32* %83, i64 %86)
  store i64 %87, i64* %12, align 8
  %88 = load i64*, i64** %11, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %73
  %93 = load i32, i32* @TAG, align 4
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %95, i64 %96)
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @spi_flash_munmap(i32 %98)
  %100 = load i64, i64* @ESP_FAIL, align 8
  store i64 %100, i64* %3, align 8
  br label %109

101:                                              ; preds = %73
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @spi_flash_munmap(i32 %102)
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %4, align 8
  store i64 %106, i64* %107, align 8
  %108 = load i64, i64* @ESP_OK, align 8
  store i64 %108, i64* %3, align 8
  br label %109

109:                                              ; preds = %101, %92, %68, %47, %36, %26, %18
  %110 = load i64, i64* %3, align 8
  ret i64 %110
}

declare dso_local %struct.TYPE_4__* @esp_partition_find_first(i32, i32, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i64 @esp_partition_mmap(%struct.TYPE_4__*, i32, i64, i32, i8**, i32*) #1

declare dso_local i32 @spi_flash_munmap(i32) #1

declare dso_local i64 @crc32_le(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
