; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/partition_api/partition_mmap/main/extr_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/partition_api/partition_mmap/main/extr_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ESP_PARTITION_TYPE_DATA = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"storage\00", align 1
@app_main.store_data = internal constant [37 x i8] c"ESP-IDF Partition Memory Map Example\00", align 16
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Written sample data to partition: %s\00", align 1
@SPI_FLASH_MMAP_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Mapped partition to data memory address %p\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Read sample data from partition using mapped memory: %s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Data matches\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Unmapped partition from data memory\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Example end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [37 x i8], align 16
  %5 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %6 = load i32, i32* @ESP_PARTITION_SUBTYPE_ANY, align 4
  %7 = call %struct.TYPE_6__* @esp_partition_find_first(i32 %5, i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %1, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @esp_partition_erase_range(%struct.TYPE_6__* %12, i32 0, i32 %15)
  %17 = call i32 @ESP_ERROR_CHECK(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %19 = call i32 @esp_partition_write(%struct.TYPE_6__* %18, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @app_main.store_data, i64 0, i64 0), i32 37)
  %20 = call i32 @ESP_ERROR_CHECK(i32 %19)
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @app_main.store_data, i64 0, i64 0))
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SPI_FLASH_MMAP_DATA, align 4
  %28 = call i32 @esp_partition_mmap(%struct.TYPE_6__* %23, i32 0, i32 %26, i32 %27, i8** %2, i32* %3)
  %29 = call i32 @ESP_ERROR_CHECK(i32 %28)
  %30 = load i32, i32* @TAG, align 4
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = getelementptr inbounds [37 x i8], [37 x i8]* %4, i64 0, i64 0
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @memcpy(i8* %33, i8* %34, i32 37)
  %36 = load i32, i32* @TAG, align 4
  %37 = getelementptr inbounds [37 x i8], [37 x i8]* %4, i64 0, i64 0
  %38 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [37 x i8], [37 x i8]* %4, i64 0, i64 0
  %40 = call i64 @strcmp(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @app_main.store_data, i64 0, i64 0), i8* %39)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* @TAG, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @spi_flash_munmap(i32 %46)
  %48 = load i32, i32* @TAG, align 4
  %49 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* @TAG, align 4
  %51 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_6__* @esp_partition_find_first(i32, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_partition_erase_range(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @esp_partition_write(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_partition_mmap(%struct.TYPE_6__*, i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @spi_flash_munmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
