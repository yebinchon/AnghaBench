; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_test_rollback2_1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_test_rollback2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@boot_count = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"boot count %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"OTA0\00", align 1
@ESP_PARTITION_SUBTYPE_APP_OTA_0 = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_APP_OTA_1 = common dso_local global i32 0, align 4
@ESP_OTA_IMG_VALID = common dso_local global i32 0, align 4
@ESP_OTA_IMG_INVALID = common dso_local global i32 0, align 4
@ESP_OTA_IMG_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rollback2_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rollback2_1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store i32 5, i32* @boot_count, align 4
  store i32 1431677610, i32* %1, align 4
  %5 = load i32, i32* @TAG, align 4
  %6 = load i32, i32* @boot_count, align 4
  %7 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call %struct.TYPE_9__* (...) @get_running_firmware()
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %2, align 8
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_OTA_0, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @TEST_ASSERT_EQUAL(i32 %11, i32 %14)
  %16 = call %struct.TYPE_9__* (...) @esp_ota_get_last_invalid_partition()
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %3, align 8
  %17 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_OTA_1, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TEST_ASSERT_EQUAL(i32 %17, i32 %20)
  %22 = call %struct.TYPE_9__* @esp_ota_get_next_update_partition(i32* null)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %4, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @TEST_ASSERT_NOT_NULL(%struct.TYPE_9__* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = call i32 @TEST_ASSERT_NOT_NULL(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = call i32 @TEST_ASSERT_EQUAL_PTR(%struct.TYPE_9__* %27, %struct.TYPE_9__* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = call i32 @esp_ota_get_state_partition(%struct.TYPE_9__* %30, i32* %1)
  %32 = call i32 @TEST_ESP_OK(i32 %31)
  %33 = load i32, i32* @ESP_OTA_IMG_VALID, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @TEST_ASSERT_EQUAL(i32 %33, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = call i32 @esp_ota_get_state_partition(%struct.TYPE_9__* %36, i32* %1)
  %38 = call i32 @TEST_ESP_OK(i32 %37)
  %39 = load i32, i32* @ESP_OTA_IMG_INVALID, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @TEST_ASSERT_EQUAL(i32 %39, i32 %40)
  %42 = call i32 (...) @erase_ota_data()
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @get_running_firmware(...) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local %struct.TYPE_9__* @esp_ota_get_last_invalid_partition(...) #1

declare dso_local %struct.TYPE_9__* @esp_ota_get_next_update_partition(i32*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(%struct.TYPE_9__*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_PTR(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_ota_get_state_partition(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @erase_ota_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
