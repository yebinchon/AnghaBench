; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_erase_last_boot_app_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_erase_last_boot_app_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }

@ESP_FAIL = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"finding last_boot_app_partition ota_%d app...\00", align 1
@ESP_PARTITION_SUBTYPE_APP_OTA_MIN = common dso_local global i64 0, align 8
@ESP_PARTITION_TYPE_APP = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@SPI_FLASH_SEC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_ota_erase_last_boot_app_partition() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [2 x %struct.TYPE_11__], align 16
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %2, i64 0, i64 0
  %13 = call %struct.TYPE_10__* @read_otadata(%struct.TYPE_11__* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %3, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = load i64, i64* @ESP_FAIL, align 8
  store i64 %17, i64* %1, align 8
  br label %114

18:                                               ; preds = %0
  %19 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %2, i64 0, i64 0
  %20 = call i32 @bootloader_common_get_active_otadata(%struct.TYPE_11__* %19)
  store i32 %20, i32* %4, align 4
  %21 = call i32 (...) @get_ota_partition_count()
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %18
  %28 = load i64, i64* @ESP_FAIL, align 8
  store i64 %28, i64* %1, align 8
  br label %114

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %2, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 16
  %38 = load i32, i32* @UINT32_MAX, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %51, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %2, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %2, i64 0, i64 %47
  %49 = call i64 @bootloader_common_ota_select_crc(%struct.TYPE_11__* %48)
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %40, %29
  %52 = load i64, i64* @ESP_FAIL, align 8
  store i64 %52, i64* %1, align 8
  br label %114

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %2, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 16
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %5, align 4
  %61 = srem i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @TAG, align 4
  %63 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_OTA_MIN, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = call i32 @ESP_LOGD(i32 %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* @ESP_PARTITION_TYPE_APP, align 4
  %69 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_OTA_MIN, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = call %struct.TYPE_10__* @esp_partition_find_first(i32 %68, i64 %72, i32* null)
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %8, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = icmp eq %struct.TYPE_10__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %53
  %77 = load i64, i64* @ESP_FAIL, align 8
  store i64 %77, i64* %1, align 8
  br label %114

78:                                               ; preds = %53
  %79 = call %struct.TYPE_10__* (...) @esp_ota_get_running_partition()
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %9, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %81 = icmp eq %struct.TYPE_10__* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = icmp eq %struct.TYPE_10__* %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %78
  %87 = load i64, i64* @ESP_FAIL, align 8
  store i64 %87, i64* %1, align 8
  br label %114

88:                                               ; preds = %82
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @esp_partition_erase_range(%struct.TYPE_10__* %89, i32 0, i32 %92)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @ESP_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i64, i64* %10, align 8
  store i64 %98, i64* %1, align 8
  br label %114

99:                                               ; preds = %88
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %11, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %106 = call i64 @esp_partition_erase_range(%struct.TYPE_10__* %101, i32 %104, i32 %105)
  store i64 %106, i64* %10, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @ESP_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i64, i64* %10, align 8
  store i64 %111, i64* %1, align 8
  br label %114

112:                                              ; preds = %99
  %113 = load i64, i64* @ESP_OK, align 8
  store i64 %113, i64* %1, align 8
  br label %114

114:                                              ; preds = %112, %110, %97, %86, %76, %51, %27, %16
  %115 = load i64, i64* %1, align 8
  ret i64 %115
}

declare dso_local %struct.TYPE_10__* @read_otadata(%struct.TYPE_11__*) #1

declare dso_local i32 @bootloader_common_get_active_otadata(%struct.TYPE_11__*) #1

declare dso_local i32 @get_ota_partition_count(...) #1

declare dso_local i64 @bootloader_common_ota_select_crc(%struct.TYPE_11__*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i64) #1

declare dso_local %struct.TYPE_10__* @esp_partition_find_first(i32, i64, i32*) #1

declare dso_local %struct.TYPE_10__* @esp_ota_get_running_partition(...) #1

declare dso_local i64 @esp_partition_erase_range(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
