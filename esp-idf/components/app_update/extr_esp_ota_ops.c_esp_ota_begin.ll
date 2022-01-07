; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_begin.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_12__* }

@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@ESP_ERR_OTA_PARTITION_CONFLICT = common dso_local global i64 0, align 8
@OTA_SIZE_UNKNOWN = common dso_local global i64 0, align 8
@SPI_FLASH_SEC_SIZE = common dso_local global i64 0, align 8
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@s_ota_ops_entries_head = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@s_ota_ops_last_handle = common dso_local global i64 0, align 8
@ESP_ERR_OTA_ROLLBACK_INVALID_STATE = common dso_local global i64 0, align 8
@ESP_OTA_IMG_PENDING_VERIFY = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_ota_begin(%struct.TYPE_12__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64, i64* @ESP_OK, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %18, i64* %4, align 8
  br label %107

19:                                               ; preds = %14
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call %struct.TYPE_12__* @esp_partition_verify(%struct.TYPE_12__* %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %5, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = icmp eq %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  store i64 %25, i64* %4, align 8
  br label %107

26:                                               ; preds = %19
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = call i32 @is_ota_partition(%struct.TYPE_12__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %31, i64* %4, align 8
  br label %107

32:                                               ; preds = %26
  %33 = call %struct.TYPE_12__* (...) @esp_ota_get_running_partition()
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %10, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = icmp eq %struct.TYPE_12__* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @ESP_ERR_OTA_PARTITION_CONFLICT, align 8
  store i64 %38, i64* %4, align 8
  br label %107

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @OTA_SIZE_UNKNOWN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42, %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @esp_partition_erase_range(%struct.TYPE_12__* %47, i32 0, i64 %50)
  store i64 %51, i64* %9, align 8
  br label %61

52:                                               ; preds = %42
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @SPI_FLASH_SEC_SIZE, align 8
  %56 = udiv i64 %54, %55
  %57 = add i64 %56, 1
  %58 = load i64, i64* @SPI_FLASH_SEC_SIZE, align 8
  %59 = mul i64 %57, %58
  %60 = call i64 @esp_partition_erase_range(%struct.TYPE_12__* %53, i32 0, i64 %59)
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %52, %46
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @ESP_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %4, align 8
  br label %107

67:                                               ; preds = %61
  %68 = call i64 @calloc(i32 24, i32 1)
  %69 = inttoptr i64 %68 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %8, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = icmp eq %struct.TYPE_11__* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %73, i64* %4, align 8
  br label %107

74:                                               ; preds = %67
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = load i32, i32* @entries, align 4
  %77 = call i32 @LIST_INSERT_HEAD(i32* @s_ota_ops_entries_head, %struct.TYPE_11__* %75, i32 %76)
  %78 = load i64, i64* %6, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @OTA_SIZE_UNKNOWN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80, %74
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %94

90:                                               ; preds = %80
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %97, align 8
  %98 = load i64, i64* @s_ota_ops_last_handle, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* @s_ota_ops_last_handle, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %7, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* @ESP_OK, align 8
  store i64 %106, i64* %4, align 8
  br label %107

107:                                              ; preds = %94, %72, %65, %37, %30, %24, %17
  %108 = load i64, i64* %4, align 8
  ret i64 %108
}

declare dso_local %struct.TYPE_12__* @esp_partition_verify(%struct.TYPE_12__*) #1

declare dso_local i32 @is_ota_partition(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @esp_ota_get_running_partition(...) #1

declare dso_local i64 @esp_partition_erase_range(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
