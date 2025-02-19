; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_test_flow2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_test_flow2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@boot_count = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"boot count %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Factory\00", align 1
@ESP_PARTITION_SUBTYPE_APP_FACTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"OTA0\00", align 1
@ESP_PARTITION_SUBTYPE_APP_OTA_0 = common dso_local global i32 0, align 4
@CORR_CRC_1_SECTOR_OTA_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Unexpected stage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_flow2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_flow2() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i32, i32* @boot_count, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @boot_count, align 4
  %4 = load i32, i32* @TAG, align 4
  %5 = load i32, i32* @boot_count, align 4
  %6 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call %struct.TYPE_4__* (...) @get_running_firmware()
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %1, align 8
  %8 = load i32, i32* @boot_count, align 4
  switch i32 %8, label %42 [
    i32 2, label %9
    i32 3, label %18
    i32 4, label %33
  ]

9:                                                ; preds = %0
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_FACTORY, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @TEST_ASSERT_EQUAL(i32 %12, i32 %15)
  %17 = call i32 (...) @copy_current_app_to_next_part_and_reboot()
  br label %45

18:                                               ; preds = %0
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_OTA_0, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @TEST_ASSERT_EQUAL(i32 %21, i32 %24)
  %26 = call i32 (...) @mark_app_valid()
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %28 = call i32 (...) @get_next_update_partition()
  %29 = call i32 @copy_current_app_to_next_part(%struct.TYPE_4__* %27, i32 %28)
  %30 = load i32, i32* @CORR_CRC_1_SECTOR_OTA_DATA, align 4
  %31 = call i32 @corrupt_ota_data(i32 %30)
  %32 = call i32 (...) @reboot_as_deep_sleep()
  br label %45

33:                                               ; preds = %0
  %34 = load i32, i32* @TAG, align 4
  %35 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_FACTORY, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TEST_ASSERT_EQUAL(i32 %36, i32 %39)
  %41 = call i32 (...) @erase_ota_data()
  br label %45

42:                                               ; preds = %0
  %43 = call i32 (...) @erase_ota_data()
  %44 = call i32 @TEST_FAIL_MESSAGE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %33, %18, %9
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @get_running_firmware(...) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @copy_current_app_to_next_part_and_reboot(...) #1

declare dso_local i32 @mark_app_valid(...) #1

declare dso_local i32 @copy_current_app_to_next_part(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @get_next_update_partition(...) #1

declare dso_local i32 @corrupt_ota_data(i32) #1

declare dso_local i32 @reboot_as_deep_sleep(...) #1

declare dso_local i32 @erase_ota_data(...) #1

declare dso_local i32 @TEST_FAIL_MESSAGE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
