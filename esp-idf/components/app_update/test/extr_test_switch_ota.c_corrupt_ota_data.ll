; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_corrupt_ota_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_corrupt_ota_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@ESP_PARTITION_TYPE_DATA = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_DATA_OTA = common dso_local global i32 0, align 4
@CORR_CRC_1_SECTOR_OTA_DATA = common dso_local global i32 0, align 4
@CORR_CRC_2_SECTOR_OTA_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @corrupt_ota_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corrupt_ota_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x %struct.TYPE_12__], align 16
  %4 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %6 = load i32, i32* @ESP_PARTITION_SUBTYPE_DATA_OTA, align 4
  %7 = call %struct.TYPE_11__* @esp_partition_find_first(i32 %5, i32 %6, i32* null)
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = call i32 @TEST_ASSERT_NOT_EQUAL(i32* null, %struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %3, i64 0, i64 0
  %12 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %3, i64 0, i64 1
  %13 = call i32 @get_ota_data(%struct.TYPE_11__* %10, %struct.TYPE_12__* %11, %struct.TYPE_12__* %12)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @CORR_CRC_1_SECTOR_OTA_DATA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %3, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 16
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @CORR_CRC_2_SECTOR_OTA_DATA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %3, i64 0, i64 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @esp_partition_erase_range(%struct.TYPE_11__* %30, i32 0, i32 %33)
  %35 = call i32 @TEST_ESP_OK(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %3, i64 0, i64 0
  %38 = call i32 @write_ota_data(%struct.TYPE_11__* %36, %struct.TYPE_12__* %37, i32 0)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %3, i64 0, i64 1
  %41 = call i32 @write_ota_data(%struct.TYPE_11__* %39, %struct.TYPE_12__* %40, i32 1)
  ret void
}

declare dso_local %struct.TYPE_11__* @esp_partition_find_first(i32, i32, i32*) #1

declare dso_local i32 @TEST_ASSERT_NOT_EQUAL(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @get_ota_data(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_partition_erase_range(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @write_ota_data(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
