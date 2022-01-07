; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/partition_api/partition_ops/main/extr_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/partition_api/partition_ops/main/extr_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ESP_PARTITION_TYPE_DATA = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"storage\00", align 1
@app_main.store_data = internal global [58 x i8] c"ESP-IDF Partition Operations Example (Read, Erase, Write)\00", align 16
@app_main.read_data = internal global [58 x i8] zeroinitializer, align 16
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Written data: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Read data: %s\00", align 1
@SPI_FLASH_SEC_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Erased data\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Example end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %3 = load i32, i32* @ESP_PARTITION_SUBTYPE_ANY, align 4
  %4 = call %struct.TYPE_6__* @esp_partition_find_first(i32 %2, i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %1, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = call i32 @memset(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.read_data, i64 0, i64 0), i32 255, i32 58)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @esp_partition_erase_range(%struct.TYPE_6__* %10, i32 0, i32 %13)
  %15 = call i32 @ESP_ERROR_CHECK(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %17 = call i32 @esp_partition_write(%struct.TYPE_6__* %16, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.store_data, i64 0, i64 0), i32 58)
  %18 = call i32 @ESP_ERROR_CHECK(i32 %17)
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.store_data, i64 0, i64 0))
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %22 = call i32 @esp_partition_read(%struct.TYPE_6__* %21, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.read_data, i64 0, i64 0), i32 58)
  %23 = call i32 @ESP_ERROR_CHECK(i32 %22)
  %24 = call i64 @memcmp(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.store_data, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.read_data, i64 0, i64 0), i32 58)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.read_data, i64 0, i64 0))
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %31 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %32 = call i32 @esp_partition_erase_range(%struct.TYPE_6__* %30, i32 0, i32 %31)
  %33 = call i32 @ESP_ERROR_CHECK(i32 %32)
  %34 = call i32 @memset(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.store_data, i64 0, i64 0), i32 255, i32 58)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %36 = call i32 @esp_partition_read(%struct.TYPE_6__* %35, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.read_data, i64 0, i64 0), i32 58)
  %37 = call i32 @ESP_ERROR_CHECK(i32 %36)
  %38 = call i64 @memcmp(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.store_data, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @app_main.read_data, i64 0, i64 0), i32 58)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* @TAG, align 4
  %43 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @TAG, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_6__* @esp_partition_find_first(i32, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_partition_erase_range(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @esp_partition_write(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_partition_read(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
