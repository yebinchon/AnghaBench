; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_test_rollback2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_test_rollback2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@boot_count = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"boot count %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Factory\00", align 1
@ESP_PARTITION_SUBTYPE_APP_FACTORY = common dso_local global i32 0, align 4
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ESP_OTA_IMG_UNDEFINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"OTA0\00", align 1
@ESP_PARTITION_SUBTYPE_APP_OTA_0 = common dso_local global i32 0, align 4
@ESP_OTA_IMG_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"OTA1\00", align 1
@ESP_PARTITION_SUBTYPE_APP_OTA_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Unexpected stage\00", align 1
@ESP_OTA_IMG_NEW = common dso_local global i32 0, align 4
@ESP_OTA_IMG_PENDING_VERIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rollback2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rollback2() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load i32, i32* @boot_count, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @boot_count, align 4
  %6 = load i32, i32* @TAG, align 4
  %7 = load i32, i32* @boot_count, align 4
  %8 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call %struct.TYPE_5__* (...) @get_running_firmware()
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %1, align 8
  store i32 1431677610, i32* %2, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  %10 = load i32, i32* @boot_count, align 4
  switch i32 %10, label %85 [
    i32 2, label %11
    i32 3, label %33
    i32 4, label %67
  ]

11:                                               ; preds = %0
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_FACTORY, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @TEST_ASSERT_EQUAL(i32 %14, i32 %17)
  %19 = call i32 (...) @esp_ota_get_last_invalid_partition()
  %20 = call i32 @TEST_ASSERT_NULL(i32 %19)
  %21 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %23 = call i32 @esp_ota_get_state_partition(%struct.TYPE_5__* %22, i32* %2)
  %24 = call i32 @TEST_ESP_ERR(i32 %21, i32 %23)
  %25 = call %struct.TYPE_5__* (...) @app_update()
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %3, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = call i32 @esp_ota_get_state_partition(%struct.TYPE_5__* %26, i32* %2)
  %28 = call i32 @TEST_ESP_OK(i32 %27)
  %29 = load i32, i32* @ESP_OTA_IMG_UNDEFINED, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @TEST_ASSERT_EQUAL(i32 %29, i32 %30)
  %32 = call i32 (...) @reboot_as_deep_sleep()
  br label %88

33:                                               ; preds = %0
  %34 = load i32, i32* @TAG, align 4
  %35 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_OTA_0, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TEST_ASSERT_EQUAL(i32 %36, i32 %39)
  %41 = call i32 (...) @esp_ota_get_last_invalid_partition()
  %42 = call i32 @TEST_ASSERT_NULL(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %44 = call i32 @esp_ota_get_state_partition(%struct.TYPE_5__* %43, i32* %2)
  %45 = call i32 @TEST_ESP_OK(i32 %44)
  %46 = load i32, i32* @ESP_OTA_IMG_UNDEFINED, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @TEST_ASSERT_EQUAL(i32 %46, i32 %47)
  %49 = call i32 (...) @esp_ota_mark_app_valid_cancel_rollback()
  %50 = call i32 @TEST_ESP_OK(i32 %49)
  %51 = call i32 (...) @esp_ota_get_last_invalid_partition()
  %52 = call i32 @TEST_ASSERT_NULL(i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %54 = call i32 @esp_ota_get_state_partition(%struct.TYPE_5__* %53, i32* %2)
  %55 = call i32 @TEST_ESP_OK(i32 %54)
  %56 = load i32, i32* @ESP_OTA_IMG_VALID, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @TEST_ASSERT_EQUAL(i32 %56, i32 %57)
  %59 = call %struct.TYPE_5__* (...) @app_update()
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %3, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = call i32 @esp_ota_get_state_partition(%struct.TYPE_5__* %60, i32* %2)
  %62 = call i32 @TEST_ESP_OK(i32 %61)
  %63 = load i32, i32* @ESP_OTA_IMG_UNDEFINED, align 4
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @TEST_ASSERT_EQUAL(i32 %63, i32 %64)
  %66 = call i32 (...) @reboot_as_deep_sleep()
  br label %88

67:                                               ; preds = %0
  %68 = load i32, i32* @TAG, align 4
  %69 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_OTA_1, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @TEST_ASSERT_EQUAL(i32 %70, i32 %73)
  %75 = call i32 (...) @esp_ota_get_last_invalid_partition()
  %76 = call i32 @TEST_ASSERT_NULL(i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %78 = call i32 @esp_ota_get_state_partition(%struct.TYPE_5__* %77, i32* %2)
  %79 = call i32 @TEST_ESP_OK(i32 %78)
  %80 = load i32, i32* @ESP_OTA_IMG_UNDEFINED, align 4
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @TEST_ASSERT_EQUAL(i32 %80, i32 %81)
  %83 = call i32 (...) @esp_ota_mark_app_invalid_rollback_and_reboot()
  %84 = call i32 @TEST_ESP_OK(i32 %83)
  br label %88

85:                                               ; preds = %0
  %86 = call i32 (...) @erase_ota_data()
  %87 = call i32 @TEST_FAIL_MESSAGE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %67, %33, %11
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @get_running_firmware(...) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @TEST_ASSERT_NULL(i32) #1

declare dso_local i32 @esp_ota_get_last_invalid_partition(...) #1

declare dso_local i32 @TEST_ESP_ERR(i32, i32) #1

declare dso_local i32 @esp_ota_get_state_partition(%struct.TYPE_5__*, i32*) #1

declare dso_local %struct.TYPE_5__* @app_update(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @reboot_as_deep_sleep(...) #1

declare dso_local i32 @esp_ota_mark_app_valid_cancel_rollback(...) #1

declare dso_local i32 @esp_ota_mark_app_invalid_rollback_and_reboot(...) #1

declare dso_local i32 @erase_ota_data(...) #1

declare dso_local i32 @TEST_FAIL_MESSAGE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
